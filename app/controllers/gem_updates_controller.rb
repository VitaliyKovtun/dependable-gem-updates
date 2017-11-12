# Receive webhooks from RubyGems.org API
class GemUpdatesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    TwitterClient.tweet(**gem_update_params.to_h.symbolize_keys.merge(gem_url: gem_url(gem_update_params[:name])))
  end

  private

  def gem_update_params
    params.require(:gem_update).permit(*%i[name version])
  end
end
