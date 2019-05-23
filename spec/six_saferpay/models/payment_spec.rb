require 'spec_helper'

RSpec.describe SixSaferpay::Payment do

  subject { SpinningWheel.create('payment') }

  let(:hash) {
    {
      amount: subject.amount.to_h,
      order_id: subject.order_id,
      description: subject.description,
      payer_note: subject.payer_note,
      mandate_id: subject.mandate_id,
      options: subject.options.to_h,
      recurring: subject.recurring.to_h,
      installment: subject.installment.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the payment' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
