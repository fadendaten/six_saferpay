require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AssertRefundResponse do

  subject { SpinningWheel.create('six_transaction_assert_refund_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      transaction_id: subject.transaction_id,
      order_id: subject.order_id,
      status: subject.status,
      date: subject.date
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction assert refund response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
