require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AdjustAmountResponse do

  subject { SpinningWheel.create('six_transaction_adjust_amount_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction adjust amount response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
