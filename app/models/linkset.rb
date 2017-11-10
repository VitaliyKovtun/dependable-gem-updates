class Linkset < ApplicationRecord
  belongs_to :rubygem

  validates :rubygem_id, presence: true
end
