class Rubygem < ApplicationRecord
  has_many :dependencies
  has_many :gem_downloads
  has_many :linksets
  has_many :versions

  scope :search, (lambda do |query|
    where('LOWER(name) LIKE ?', "%#{query.downcase}%")
  end)
end
