require 'spec_helper'

RSpec.describe SixSaferpay::PaymentMethodOptions do

  subject { SpinningWheel.create('payment_method_options') }

  let(:hash) {
    {
      bankcontact: subject.bankcontact.to_h
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the payment method options' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
