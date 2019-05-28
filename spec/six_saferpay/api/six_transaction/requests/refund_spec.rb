require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::Refund do

  subject { SpinningWheel.create('six_transaction_refund') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      refund: subject.refund.to_h,
      capture_reference: subject.capture_reference.to_h,
      pending_notification: subject.pending_notification.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction refund' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
