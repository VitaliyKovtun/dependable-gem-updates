class GemDownload < ApplicationRecord
  belongs_to :rubygem
  belongs_to :version

  validates :rubygem_id, :version_id, presence: true
end
