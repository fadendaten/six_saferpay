require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::MultipartFinalize do

  subject { SpinningWheel.create('six_transaction_multipart_finalize') }

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
end
