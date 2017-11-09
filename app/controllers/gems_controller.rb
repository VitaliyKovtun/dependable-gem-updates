class GemsController < ApplicationController
  def gems
    @gems ||= Gems.search params[:search] unless params[:search].blank?
  end

  def show
    @gem ||= Gems.info gem_name
    versions ||= Gems.versions gem_name
    @gem_versions = versions.map { |version| version['number'] }
  end

  helper_method :gems

  private

  def gem_name
    @gem_name ||= params[:id]
  end
end
