require 'spec_helper'

RSpec.describe SixSaferpay::Amount do

  let(:value) { '100' }
  let(:currency) { 'CHF' }

  let(:hash) {
    {
      Amount: {
        Value: value,
        CurrencyCode: currency
      }
    }
  }

  subject { described_class.new(value: value, currency: currency) }

  describe 'to_hash' do
    it 'returns the hash representation of the transaction' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
