require 'rails_helper'

RSpec.describe Version, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:rubygem) }
    it { is_expected.to have_many(:dependencies) }
    it { is_expected.to have_many(:gem_downloads) }
  end
end
