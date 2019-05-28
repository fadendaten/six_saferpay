require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::Initialize do

  subject { SpinningWheel.create('six_transaction_initialize') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      terminal_id: subject.terminal_id,
      payment: subject.payment.to_h,
      payment_means: subject.payment_means.to_h,
      payer: subject.payer.to_h,
      return_urls: subject.return_urls.to_h,
      styling: subject.styling.to_h,
      wallet: subject.wallet.to_h,
      payment_methods: subject.payment_methods,
      card_form: subject.card_form.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction initialize' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
