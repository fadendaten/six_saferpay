require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AssertCapture do

  subject { SpinningWheel.create('six_transaction_assert_capture') }

  let(:url) { '/Payment/v1/Transaction/AssertCapture' }
  let(:response_class) { SixSaferpay::SixTransaction::AssertCaptureResponse }

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

  describe 'to_json' do
    it { expect(subject.to_json).to eq(hash.to_json) }
  end

  describe 'url' do
    it { expect(subject.url).to eq(url) }
  end

  describe 'response_class' do
    it { expect(subject.response_class).to eq(response_class) }
  end
end
