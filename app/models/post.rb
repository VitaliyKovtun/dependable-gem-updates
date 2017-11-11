class Post < ApplicationRecord
  validates :gem_name, :from_version, :to_version, presence: true
end
