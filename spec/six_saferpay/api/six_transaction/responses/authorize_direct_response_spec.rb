require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AuthorizeDirectResponse do

  subject { SpinningWheel.create('six_transaction_authorize_direct_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      transaction: subject.transaction.to_h,
      payment_means: subject.payment_means.to_h,
      payer: subject.payer.to_h,
      registration_result: subject.registration_result.to_h,
      mastercard_issuer_installments: subject.mastercard_issuer_installments.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction authorize direct response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
