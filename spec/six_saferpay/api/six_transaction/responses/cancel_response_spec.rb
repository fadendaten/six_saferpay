require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::CancelResponse do

  subject { SpinningWheel.create('six_transaction_cancel_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      transaction_id: subject.transaction_id,
      order_id: subject.order_id,
      date: subject.date
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction cancel response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
