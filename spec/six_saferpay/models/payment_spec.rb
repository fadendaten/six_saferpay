require 'spec_helper'

RSpec.describe SixSaferpay::Payment do

  let(:value) { '100' }
  let(:currency_code) { 'CHF' }
  let(:order_id) { 'R123456789' }
  let(:description) { "Order #{order_id}" }

  let(:amount) { SixSaferpay::Amount
    .new(value: value, currency_code: currency_code)
  }

  let(:hash) {
    {
      amount: {
        value: value,
        currency_code: currency_code
      },
      order_id: order_id,
      description: description
    }
  }

  subject {
    described_class.new(amount: amount,
                        order_id: order_id,
                        description: description)
  }

  describe 'to_hash' do
    it 'returns the hash representation of the payment' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
