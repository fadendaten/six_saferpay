require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::MultipartFinalizeResponse do

  subject { SpinningWheel.create('six_transaction_multipart_finalize_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction multipart finalize response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
