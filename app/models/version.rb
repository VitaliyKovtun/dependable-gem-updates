class Version < ApplicationRecord
  belongs_to :rubygem
  has_many :dependencies
  has_many :gem_downloads
end
