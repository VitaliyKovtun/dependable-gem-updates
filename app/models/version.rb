class Version < ApplicationRecord
  belongs_to :rubygem
  has_many :dependencies
  has_many :gem_downloads

  validates :name, :metadata, :rubygem_id, presence: true
end
