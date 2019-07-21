require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AdjustAmount do

  subject { SpinningWheel.create('six_transaction_adjust_amount') }

  let(:url) { '/Payment/v1/Transaction/AdjustAmount' }
  let(:response_class) { SixSaferpay::SixTransaction::AdjustAmountResponse }

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

