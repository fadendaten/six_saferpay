require 'spec_helper'

RSpec.describe SixSaferpay::TransactionReference do

  subject { SpinningWheel.create('transaction_reference') }

  let(:hash) {
    {
      transaction_id: subject.transaction_id,
      order_id: subject.order_id
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the transaction reference' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
