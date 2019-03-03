require 'spec_helper'

RSpec.describe SixSaferpay::Payment do

  let(:value) { '100' }
  let(:currency) { 'CHF' }
  let(:order_id) { 'R123456789' }
  let(:description) { "Order #{order_id}" }

  let(:hash) {
    {
      Payment: {
        Amount: {
          Value: value,
          CurrencyCode: currency
        },
        OrderId: order_id,
        Description: description
      }
    }
  }

  subject {
    described_class.new(value: value,
                        currency: currency,
                        order_id: order_id,
                        description: description)
  }

  describe 'to_hash' do
    it 'returns the hash representation of the payment' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
