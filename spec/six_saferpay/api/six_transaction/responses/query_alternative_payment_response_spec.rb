require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::QueryAlternativePaymentResponse do

  subject { SpinningWheel.create('six_transaction_query_alternative_payment_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      transaction: subject.transaction.to_h,
      payment_means: subject.payment_means.to_h,
      payer: subject.payer.to_h,
      liability: subject.liability.to_h,
      fraud_prevention: subject.fraud_prevention.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction query alternative payment response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
