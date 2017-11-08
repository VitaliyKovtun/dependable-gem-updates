class GemsController < ApplicationController
  def gems
    @gems = Gems.search params[:search] unless params[:search].blank?
  end
  helper_method :gems
end
