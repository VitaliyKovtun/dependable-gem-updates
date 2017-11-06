class Post < ApplicationRecord
  validates :gem_name, :from_version, :to_version, presence: true

  after_create :tweeting

  private

  def tweeting
    TwitterClient.tweet(name: gem_name, version: to_version)
  end
end
