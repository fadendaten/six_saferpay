require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AssertRefund do

  subject { SpinningWheel.create('six_transaction_assert_refund') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      transaction_reference: subject.transaction_reference.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction assert refund' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
