require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AdjustAmount do

  subject { SpinningWheel.create('six_transaction_adjust_amount') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      token: subject.token,
      amount: subject.amount.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction adjust amount' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
