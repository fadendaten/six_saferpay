require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::QueryPaymentMeans do

  subject { SpinningWheel.create('six_transaction_query_payment_means') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      token: subject.token,
      return_urls: subject.return_urls.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction query payment means' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
