require 'spec_helper'

RSpec.describe SixSaferpay::RequestCard do

  let(:card) { SpinningWheel.create('request_card') }

  let(:hash) {
    {
      number: card.number,
      exp_year: card.exp_year,
      exp_month: card.exp_month,
      holder_name: card.holder_name,
      verification_code: card.verification_code
    }
  }

  subject { card }

  describe 'to_hash' do
    it 'returns the hash representation of the request card' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
