require 'spec_helper'

RSpec.describe SixSaferpay::Refund do

  subject { SpinningWheel.create('refund') }

  let(:hash) {
    {
      amount: subject.amount.to_h,
      order_id: subject.order_id,
      description: subject.description
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the refund' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
