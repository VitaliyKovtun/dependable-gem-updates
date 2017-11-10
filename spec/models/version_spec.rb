require 'rails_helper'

RSpec.describe Version, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:rubygem) }
    it { is_expected.to have_many(:dependencies) }
    it { is_expected.to have_many(:gem_downloads) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:metadata) }
    it { is_expected.to validate_presence_of(:rubygem_id) }
  end
end
