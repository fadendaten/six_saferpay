require 'spec_helper'

RSpec.describe SixSaferpay::SixBatch::CloseResponse do

  subject { SpinningWheel.create('six_batch_close_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six batch close response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
