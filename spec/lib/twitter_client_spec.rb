require 'rails_helper'

RSpec.describe TwitterClient do
  describe '#tweet' do
    let(:post) { create(:post) }
    let(:client) { double(Twitter::REST::Client, update: 'info') }

    before do
      allow(Twitter::REST::Client).to receive(:new).and_return(client)
      post.reload
    end

    subject { -> { described_class.tweet(name: 'gem', version: '1', gem_url: 'https://updates.dependable.io/gem') } }

    it do
      expect(client).to receive(:update).with("New version of gem: release 1. Check it out at https://updates.dependable.io/gem")
      subject.call
    end
  end
end
