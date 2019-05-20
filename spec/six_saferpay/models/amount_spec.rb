require 'spec_helper'

RSpec.describe SixSaferpay::Amount do

  let(:value) { '100' }
  let(:currency_code) { 'CHF' }

  let(:hash) {
    {
      value: value,
      currency_code: currency_code
    }
  }

  subject { described_class.new(value: value, currency_code: currency_code) }

  describe 'to_hash' do
    it 'returns the hash representation of the transaction' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
