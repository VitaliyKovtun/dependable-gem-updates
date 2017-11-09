class GemsController < ApplicationController
  before_action :check_gem_existance, only: %i[show dependency_changes]
  before_action :resolve_dependencies, only: %i[show dependency_changes]

  private

  attr_reader :dependencies
  helper_method :dependencies

  def gems
    @gems ||= params[:search].blank? ? Gems.just_updated : Gems.search(params[:search])
  end
  helper_method :gems

  def gem_name
    @gem_name ||= params[:name]
  end

  def gem
    @gem ||= Gems.info gem_name
  end
  helper_method :gem

  def latest_version
    @latest_version ||= gem_versions.first
  end
  helper_method :latest_version

  def gem_versions
    @gem_versions ||= Gems.versions(gem_name).tap do |versions|
      versions.map { |v| v['created_at'] = v['created_at'].to_date.to_formatted_s(:long) }
    end
  end
  helper_method :gem_versions

  def resolve_dependencies
    return if gem_versions.size < 2
    all_dependencies ||= Gems.dependencies(gem_name)
    actual = all_dependencies.detect { |d| d[:number] == gem['version'] }[:dependencies].to_h
    legacy = all_dependencies.detect { |d| d[:number] == (params[:gem_version] || gem_versions[1]['number']) }[:dependencies].to_h
    @dependencies = {}
    (actual.keys + legacy.keys).uniq.each do |name|
      @dependencies[name] = {actual: actual[name], legacy: legacy[name]} unless actual[name] == legacy[name]
    end
  end

  def check_gem_existance
    gem
  rescue => e
    return render('not_found')
  end
end
