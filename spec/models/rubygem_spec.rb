require 'rails_helper'

RSpec.describe Rubygem, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:dependencies) }
    it { is_expected.to have_many(:gem_downloads) }
    it { is_expected.to have_many(:linksets) }
    it { is_expected.to have_many(:versions) }
  end

  describe '.search' do
    let(:rubygem_one) { create(:rubygem) }
    let(:rubygem_two) { create(:rubygem) }

    subject { Rubygem.search(rubygem_one.name) }

    it { is_expected.to include(rubygem_one) }
    it { is_expected.to_not include(rubygem_two) }
  end
end
