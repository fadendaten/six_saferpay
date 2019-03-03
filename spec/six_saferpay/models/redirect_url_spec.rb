require 'spec_helper'

RSpec.describe SixSaferpay::RedirectUrl do

  let(:redirect_url) { 'http://localhost:3000' }

  subject { described_class.new(redirect_url: redirect_url) }

  let(:hash) {
    {
      RedirectUrl: redirect_url
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the redirect url' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
