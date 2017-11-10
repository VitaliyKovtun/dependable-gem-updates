require 'rails_helper'

RSpec.describe Rubygem, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:dependencies) }
    it { is_expected.to have_many(:gem_downloads) }
    it { is_expected.to have_many(:linksets) }
    it { is_expected.to have_many(:versions) }
  end
end
