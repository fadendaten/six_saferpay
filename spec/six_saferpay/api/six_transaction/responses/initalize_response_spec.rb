require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::InitializeResponse do

  subject { SpinningWheel.create('six_transaction_initialize_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      token: subject.token,
      expiration: subject.expiration,
      liability_shift: subject.liability_shift,
      redirect_required: subject.redirect_required,
      redirect: subject.redirect.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction initialize response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
