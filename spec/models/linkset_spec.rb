require 'rails_helper'

RSpec.describe Linkset, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:rubygem) }
  end
end
