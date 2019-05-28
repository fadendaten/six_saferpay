require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::InquireResponse do

  subject { SpinningWheel.create('six_transaction_inquire_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      transaction: subject.transaction.to_h,
      payment_means: subject.payment_means.to_h,
      payer: subject.payer.to_h,
      liability: subject.liability.to_h,
      dcc: subject.dcc.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction inquire response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
