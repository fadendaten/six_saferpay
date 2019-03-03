require 'spec_helper'

RSpec.describe SixSaferpay::PaymentPage::Assert do

  let(:customer_id) { '245294' }
  let(:request_id) { SecureRandom.uuid }
  let(:retry_indicator) { 0 }
  let(:token) { '234uhfh78234hlasdfh8234e' }

  let(:url) { '/Payment/v1/PaymentPage/Assert' }

  subject { described_class.new(token: token) }

  before do
    subject.request_header.request_id = request_id
  end

  let(:hash) {
    {
      RequestHeader: {
        SpecVersion: SixSaferpay::API::VERSION,
        CustomerId: customer_id,
        RequestId: request_id,
        RetryIndicator: retry_indicator
      },
      Token: token
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the payment page assert' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  describe 'to_json' do
    it 'returns the JSON representation of the payment page assert' do
      expect(subject.to_json).to eq(hash.to_json)
    end
  end

  describe 'url' do
    it 'returns the url for the payment page assert' do
      expect(subject.url).to eq(url)
    end
  end

end
