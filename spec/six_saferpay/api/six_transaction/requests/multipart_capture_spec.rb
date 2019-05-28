require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::MultipartCapture do

  subject { SpinningWheel.create('six_transaction_multipart_capture') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      transaction_reference: subject.transaction_reference.to_h,
      amount: subject.amount.to_h,
      type: subject.type,
      order_part_id: subject.order_part_id,
      marketplace: subject.marketplace.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction multipart capture' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
