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
      config.consumer_key = ENV['TWITTER_CONSUMER_API_KEY']
      config.consumer_secret = ENV['TWITTER_CONSUMER_API_SECRET']
      config.access_token = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
    end
  end

  attr_reader :post
end
