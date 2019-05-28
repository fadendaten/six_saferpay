require 'spec_helper'

RSpec.describe SixSaferpay::PaymentMethodsOptions do

  subject { SpinningWheel.create('payment_methods_options') }

  let(:hash) {
    {
      alipay: subject.alipay.to_h
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the payment method options' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
