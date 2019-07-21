require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AlternativePaymentResponse do

  subject { SpinningWheel.create('six_transaction_alternative_payment_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      token: subject.token,
      expiration: subject.expiration,
      processing_data: subject.processing_data.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction alternative payment response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
