require 'spec_helper'

RSpec.describe SixSaferpay::Marketplace do

  subject { SpinningWheel.create('marketplace') }

  let(:hash) {
    {
      submerchant_id: subject.submerchant_id,
      fee: subject.fee.to_h,
      fee_refund: subject.fee_refund.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the marketplace' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
