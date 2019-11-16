require 'spec_helper'

RSpec.describe SixSaferpay::SixSecurePayGateOffer::CreateOfferResponse do

  subject { SpinningWheel.create('six_secure_pay_gate_offer_create_offer_response') }

  let(:hash) {
    {
      offer_id: subject.offer_id,
      payment_link: subject.payment_link
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure pay gate offer create offer response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
