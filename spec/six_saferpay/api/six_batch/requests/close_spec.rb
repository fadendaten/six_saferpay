require 'spec_helper'

RSpec.describe SixSaferpay::SixBatch::Close do

  subject { SpinningWheel.create('six_batch_close') }

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
end
