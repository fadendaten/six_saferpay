require 'spec_helper'

RSpec.describe SixSaferpay::PaymentMeansAlias do

  subject { SpinningWheel.create('payment_means_alias') }

  let(:hash) {
    {
      id: subject.id,
      verification_code: subject.verification_code
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the payment means alias' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
