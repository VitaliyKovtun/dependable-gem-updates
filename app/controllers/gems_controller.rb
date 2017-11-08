class GemsController < ApplicationController
  def gems
    @gems ||= Gems.search params[:search] unless params[:search].blank?
  end

  def show
    @gem ||= Gems.info params[:id]
  end

  helper_method :gems
end
