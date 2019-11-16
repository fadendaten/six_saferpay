require 'spec_helper'

RSpec.describe SixSaferpay::SixSecurePayGateOffer::CreateOffer do

  subject { SpinningWheel.create('six_secure_pay_gate_offer_create_offer') }

  let(:customer_id) { SixSaferpay.config.customer_id }
  let(:terminal_id) { SixSaferpay.config.terminal_id }

  let(:url) { "/rest/customers/#{customer_id}/terminals/#{terminal_id}/spg-offers" }
  let(:response_class) { SixSaferpay::SixSecurePayGateOffer::CreateOfferResponse }


  let(:hash) {
    {
      payment: subject.payment.to_h,
      expiration_date: subject.expiration_date,
      config_set: subject.config_set,
      payer: subject.payer.to_h,
      billing_address_form: subject.billing_address_form.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure pay gate offer create offer request' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  describe 'to_json' do
    it { expect(subject.to_json).to eq(hash.to_json) }
  end

  describe 'url' do
    it { expect(subject.url).to eq(url) }
  end

  describe 'response_class' do
    it { expect(subject.response_class).to eq(response_class) }
  end
end
