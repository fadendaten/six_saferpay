require 'spec_helper'

RSpec.describe SixSaferpay::Wallet do

  subject { SpinningWheel.create('wallet') }

  let(:hash) {
    {
      type: subject.type,
      payment_methods: subject.payment_methods,
      request_delivery_address: subject.request_delivery_address,
      enable_amount_adjustment: subject.enable_amount_adjustment
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the wallet' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
