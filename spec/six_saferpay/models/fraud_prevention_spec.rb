require 'spec_helper'

RSpec.describe SixSaferpay::FraudPrevention do

subject { SpinningWheel.create('fraud_prevention') }

  let(:hash) {
    {
        result: subject.result,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the FraudPrevention' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
