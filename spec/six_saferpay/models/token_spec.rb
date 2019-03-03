require 'spec_helper'

RSpec.describe SixSaferpay::Token do

  let(:token) { '234uhfh78234hlasdfh8234e' }

  subject { described_class.new(token: token) }

  let(:hash) {
      {
        Token: token
      }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the token' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
