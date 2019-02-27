require 'spec_helper'

RSpec.describe SixSaferpay::Payment do

  let(:order_id) { 'R123456789' }
  let(:value) { '100' }
  let(:currency) { 'CHF' }
  let(:description) { "Order #{order_id}" }

  subject { described_class.new(value, currency, order_id, description) }

  let(:hash) {
    {
      'Payment': {
        'Amount': {
          'Value': value,
          'CurrencyCode': currency
        },
        'OrderId': order_id,
        'Description': description
      }
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the payment' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
