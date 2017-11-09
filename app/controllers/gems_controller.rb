class GemsController < ApplicationController
  def gems
    @gems ||= Gems.search params[:search] unless params[:search].blank?
  end

  def show
    @gem = Gems.info gem_name
    versions = Gems.versions gem_name
    @gem_versions = versions.map { |version| version['number'] }
    newest_version = versions.find { |version| version['number'] == @gem['version'] }
    @newest_version_date = newest_version['created_at'].to_date
  end

  helper_method :gems

  private

  def gem_name
    @gem_name ||= params[:id]
  end
end
