require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AuthorizeDirect do

  subject { SpinningWheel.create('six_transaction_authorize_direct') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      terminal_id: subject.terminal_id,
      payment: subject.payment.to_h,
      payment_means: subject.payment_means.to_h,
      register_alias: subject.register_alias.to_h,
      payer: subject.payer.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction authorize direct' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
