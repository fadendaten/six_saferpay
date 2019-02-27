require 'spec_helper'

RSpec.describe SixSaferpay::Transaction::Cancel do

  let(:customer_id) { '245294' }
  let(:request_id) { SecureRandom.uuid }
  let(:retry_indicator) { 0 }
  let(:transaction_id) { '234uhfh78234hlasdfh8234e' }

  let(:url) { '/Payment/v1/Transaction/Cancel' }

  subject { described_class.new(transaction_id) }

  before do
    subject.request_header.request_id = request_id
  end

  let(:hash) {
    {
      'RequestHeader': {
        'SpecVersion': SixSaferpay::API::VERSION,
        'CustomerId': customer_id,
        'RequestId': request_id,
        'RetryIndicator': retry_indicator
      },
      'TransactionReference': {
        'TransactionId': transaction_id
      }
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
