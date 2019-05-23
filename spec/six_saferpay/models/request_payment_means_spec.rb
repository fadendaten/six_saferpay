require 'spec_helper'

RSpec.describe SixSaferpay::RequestPaymentMeans do

  subject { SpinningWheel.create('request_payment_means') }

  let(:hash) {
    {
      card: subject.card.to_h,
      bank_account: subject.bank_account.to_h,
      fd_alias: subject.fd_alias.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the request payment means' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
