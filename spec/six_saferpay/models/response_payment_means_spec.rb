require 'spec_helper'

RSpec.describe SixSaferpay::ResponsePaymentMeans do

  subject { SpinningWheel.create('response_payment_means') }

  let(:hash) {
    {
      brand: subject.brand.to_h,
      display_text: subject.display_text,
      wallet: subject.wallet,
      card: subject.card.to_h,
      bank_account: subject.bank_account.to_h,
      twint: subject.twint.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the response payment means' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
