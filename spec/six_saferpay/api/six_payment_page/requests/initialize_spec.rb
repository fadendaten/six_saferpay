require 'spec_helper'

RSpec.describe SixSaferpay::SixPaymentPage::Initialize do

  subject { SpinningWheel.create('six_payment_page_initialize') }

  let(:url) { '/Payment/v1/PaymentPage/Initialize' }
  let(:response_class) { SixSaferpay::SixPaymentPage::InitializeResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      config_set: subject.config_set,
      terminal_id: subject.terminal_id,
      payment: subject.payment.to_h,
      payment_methods: subject.payment_methods,
      payment_methods_options: subject.payment_methods_options.to_h,
      authentication: subject.authentication.to_h,
      wallets: subject.wallets,
      payer: subject.payer.to_h,
      register_alias: subject.register_alias.to_h,
      return_urls: subject.return_urls.to_h,
      notification: subject.notification.to_h,
      styling: subject.styling.to_h,
      billing_address_form: subject.billing_address_form.to_h,
      delivery_address_form: subject.delivery_address_form.to_h,
      card_form: subject.card_form.to_h,
      condition: subject.condition,
      order: subject.order.to_h
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the six payment page initialize' do
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
