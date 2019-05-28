require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::RefundDirectResponse do

  subject { SpinningWheel.create('six_transaction_refund_direct_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      transaction: subject.transaction.to_h,
      payment_means: subject.payment_means.to_h,
      dcc: subject.dcc.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction refund direct response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
