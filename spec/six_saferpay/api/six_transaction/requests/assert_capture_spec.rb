require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AssertCapture do

  subject { SpinningWheel.create('six_transaction_assert_capture') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      capture_reference: subject.capture_reference.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction capture reference' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
