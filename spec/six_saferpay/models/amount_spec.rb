require 'spec_helper'

RSpec.describe SixSaferpay::Amount do

  let(:value) { '100' }
  let(:currency_code) { 'CHF' }

  let(:amount) { SpinningWheel.create('amount') }

  let(:hash) {
    {
      value: amount.value,
      currency_code: amount.currency_code
    }
  }

  subject  { amount }

  describe 'to_hash' do
    it 'returns the hash representation of the transaction' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
