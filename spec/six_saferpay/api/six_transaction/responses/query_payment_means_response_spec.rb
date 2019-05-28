require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::QueryPaymentMeansResponse do

  subject { SpinningWheel.create('six_transaction_query_payment_means_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      payment_means: subject.payment_means.to_h,
      payer: subject.payer.to_h,
      redirect_required: subject.redirect_required,
      redirect_url: subject.redirect_url
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction query payment means response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
