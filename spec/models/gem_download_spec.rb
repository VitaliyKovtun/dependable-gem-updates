require 'rails_helper'

RSpec.describe GemDownload, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:rubygem) }
    it { is_expected.to belong_to(:version) }
  end
end
