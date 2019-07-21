require 'spec_helper'

RSpec.describe SixSaferpay::SixBatch::Close do

  subject { SpinningWheel.create('six_batch_close') }

  let(:url) { '/Payment/v1/Batch/Close' }
  let(:response_class) { SixSaferpay::SixBatch::CloseResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      terminal_id: subject.terminal_id
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six batch close' do
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
