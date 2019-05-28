require 'spec_helper'

RSpec.describe SixSaferpay::FraudFree do

  subject { SpinningWheel.create('fraud_free') }

  let(:hash) {
    {
      id: subject.id,
      liability_shift: subject.liability_shift,
      score: subject.score,
      investigation_points: subject.investigation_points,
      error_message: subject.error_message
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the fraud free' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
