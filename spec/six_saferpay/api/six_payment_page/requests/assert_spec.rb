require 'spec_helper'

RSpec.describe SixSaferpay::SixPaymentPage::Assert do

  subject { SpinningWheel.create('six_payment_page_assert') }

  let(:url) { '/Payment/v1/PaymentPage/Assert' }
  let(:response_class) { SixSaferpay::SixPaymentPage::AssertResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      token: subject.token
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six payment page assert' do
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
