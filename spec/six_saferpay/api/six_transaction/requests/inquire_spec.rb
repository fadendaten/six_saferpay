require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::Inquire do

  subject { SpinningWheel.create('six_transaction_inquire') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      transaction_reference: subject.transaction_reference.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction inquire' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end

