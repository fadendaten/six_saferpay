require 'spec_helper'

RSpec.describe SixSaferpay::PaymentPage::Initialize do

  let(:customer_id) { '245294' }
  let(:request_id) { SecureRandom.uuid }
  let(:retry_indicator) { 0 }
  let(:terminal_id) { '17925560' }
  let(:order_id) { 'R123456789' }
  let(:value) { '100' }
  let(:currency) { 'CHF' }
  let(:description) { "Order #{order_id}" }
  let(:success_url) { 'http://localhost:3004' }
  let(:fail_url) { 'http://localhost:3004' }

  let(:url) { '/Payment/v1/PaymentPage/Initialize' }

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
      TerminalId: terminal_id,
      Payment: {
        Amount: {
          Value: value,
          CurrencyCode: currency
        },
        OrderId: order_id,
        Description: description
      },
      ReturnUrls: {
        Success: success_url,
        Fail: fail_url
      }
    }
  }

  let(:init_hash) {
    {
      Payment: {
        Amount: {
          Value: value,
          CurrencyCode: currency
        }
      },
      OrderId: order_id,
      Description: description
    }
  }

  subject {
    described_class.new(value: value,
                               currency: currency,
                               order_id: order_id,
                               description: description)
  }

  describe 'to_hash' do
    it 'returns the hash representation of the payment page initialize' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  describe 'to_json' do
    it 'returns the JSON representation of the payment page initialize' do
      expect(subject.to_json).to eq(hash.to_json)
    end
  end

  describe 'url' do
    it 'returns the url for the payment page initialize' do
      expect(subject.url).to eq(url)
    end
  end

end
