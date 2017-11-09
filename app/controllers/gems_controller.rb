class GemsController < ApplicationController
  private

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
end
