class TwitterClient
  def initialize(post)
    @post = post
  end

  def tweet
    client.update(twitter_data)
  end

  private

  def twitter_data
    Rails::Html::FullSanitizer.new.sanitize("#{post.gem_name}\n#{post.from_version}\n#{post.to_version}")
  end

  def client
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = Rails.application.secrets.twitter_consumer_api_key
      config.consumer_secret = Rails.application.secrets.twitter_consumer_api_secret
      config.access_token = Rails.application.secrets.twitter_access_token
      config.access_token_secret = Rails.application.secrets.twitter_access_token_secret
    end
  end

  attr_reader :post
end
