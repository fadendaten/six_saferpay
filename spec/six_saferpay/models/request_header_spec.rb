require 'spec_helper'

RSpec.describe SixSaferpay::RequestHeader do

  subject { described_class.new() }

  let(:customer_id) { '245294' }
  let(:request_id) { SecureRandom.uuid }
  let(:retry_indicator) { 0 }

  before do
    subject.request_id = request_id
  end

  let(:hash) {
    {
      RequestHeader: {
        SpecVersion: SixSaferpay::API::VERSION,
        CustomerId: customer_id,
        RequestId: request_id,
        RetryIndicator: retry_indicator
      }
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the request header' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
