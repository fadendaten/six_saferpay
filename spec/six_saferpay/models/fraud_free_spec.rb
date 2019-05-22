require 'spec_helper'

RSpec.describe SixSaferpay::FraudFree do

  let(:fraud_free) { SpinningWheel.create('fraud_free') }

  let(:hash) {
    {
      id: fraud_free.id,
      liability_shift: fraud_free.liability_shift,
      score: fraud_free.score
    }
  }

  subject { fraud_free }

  describe 'to_hash' do
    it 'returns the hash representation of the fraud free' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
