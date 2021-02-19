require 'spec_helper'

RSpec.describe SixSaferpay::RiskFactors do

subject { SpinningWheel.create('risk_factors') }

  let(:hash) {
    {
        delivery_type: subject.delivery_type,
        payer_profile: subject.payer_profile.to_h,
        is_b2b: subject.is_b2b,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the RiskFactors' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
