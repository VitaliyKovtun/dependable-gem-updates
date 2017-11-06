require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:gem_name) }
    it { is_expected.to validate_presence_of(:from_version) }
    it { is_expected.to validate_presence_of(:to_version) }
  end
end
