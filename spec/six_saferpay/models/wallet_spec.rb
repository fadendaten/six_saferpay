require 'spec_helper'

RSpec.describe SixSaferpay::Wallet do

  let(:wallet) { SpinningWheel.create('wallet') }

  let(:hash) {
    {
      type: wallet.type,
      payment_methods: wallet.payment_methods,
      request_delivery_address: wallet.request_delivery_address,
      enable_amount_adjustment: wallet.enable_amount_adjustment
    }
  }

  subject { wallet }

  describe 'to_hash' do
    it 'returns the hash representation of the wallet' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
