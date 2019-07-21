require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::MultipartFinalize do

  subject { SpinningWheel.create('six_transaction_multipart_finalize') }

  let(:url) { '/Payment/v1/Transaction/MultipartFinalize' }
  let(:response_class) { SixSaferpay::SixTransaction::MultipartFinalizeResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      transaction_reference: subject.transaction_reference.to_h,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction multipart finalize' do
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
