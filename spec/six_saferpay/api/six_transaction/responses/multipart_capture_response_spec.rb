
RSpec.describe SixSaferpay::SixTransaction::MultipartCaptureResponse do

  subject { SpinningWheel.create('six_transaction_multipart_capture_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      capture_id: subject.capture_id,
      status: subject.status,
      date: subject.date,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction multipart capture response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
