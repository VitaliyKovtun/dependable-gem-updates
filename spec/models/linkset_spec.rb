require 'rails_helper'

RSpec.describe Linkset, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:rubygem) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:rubygem_id) }
  end
end
