require 'rails_helper'

RSpec.describe GemDownload, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:rubygem) }
    it { is_expected.to belong_to(:version) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:rubygem_id) }
    it { is_expected.to validate_presence_of(:version_id) }
  end
end
