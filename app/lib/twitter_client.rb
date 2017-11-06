class TwitterClient
  def self.tweet(*args)
    new(*args).tweet
  end

  def initialize(name:, version:, changelog_uri: nil)
    @name = name
    @version = version
    @changelog_uri = changelog_uri
  end

  def tweet
    client.update(twitter_data)
  end

  private

  def twitter_data
    Rails::Html::FullSanitizer.new.sanitize("Gem update:\n Name: #{name}\nVersion: #{version}\nChangelog: #{changelog_uri}")
  end

  def client
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['TWITTER_CONSUMER_API_KEY']
      config.consumer_secret = ENV['TWITTER_CONSUMER_API_SECRET']
      config.access_token = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
    end
  end

  attr_reader :name, :version, :changelog_uri
end
