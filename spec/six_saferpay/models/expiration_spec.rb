require 'spec_helper'

RSpec.describe SixSaferpay::Expiration do

  let(:expiration) { Date.today.iso8601 }

  subject { described_class.new(expiration: expiration) }

  let(:hash) {
    {
      Expiration: expiration
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the expiration' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
