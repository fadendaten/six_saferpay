require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AlternativePayment do

  subject { SpinningWheel.create('six_transaction_alternative_payment') }

  let(:url) { '/Payment/v1/Transaction/AlternativePayment' }
  let(:response_class) { SixSaferpay::SixTransaction::AlternativePaymentResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      terminal_id: subject.terminal_id,
      payment: subject.payment.to_h,
      payment_method: subject.payment_method,
      payment_method_options: subject.payment_method_options.to_h,
      payer: subject.payer.to_h,
      notification: subject.notification.to_h,
      order: subject.order.to_h,
      risk_factors: subject.risk_factors.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction alternative payment' do
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
