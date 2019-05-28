require 'spec_helper'

RSpec.describe SixSaferpay::SixOmniChannel::AcquireTransactionResponse do

  subject { SpinningWheel.create('six_omni_channel_acquire_transaction_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      transaction: subject.transaction.to_h,
      payment_means: subject.payment_means.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six omni channel aquire transaction response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
