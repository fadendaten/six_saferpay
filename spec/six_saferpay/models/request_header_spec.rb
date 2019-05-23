require 'spec_helper'

RSpec.describe SixSaferpay::RequestHeader do

  subject { SpinningWheel.create('request_header') }

  let(:hash) {
    {
      spec_version: subject.spec_version,
      customer_id: subject.customer_id,
      request_id: subject.request_id,
      retry_indicator: subject.retry_indicator,
      client_info: subject.client_info.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the request header' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
