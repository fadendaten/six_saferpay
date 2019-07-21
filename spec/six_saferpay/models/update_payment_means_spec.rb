require 'spec_helper'

RSpec.describe SixSaferpay::UpdatePaymentMeans do

  subject { SpinningWheel.create('update_payment_means') }

  let(:hash) {
    {
      card: subject.card.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the update payment means' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
