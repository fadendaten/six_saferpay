require 'spec_helper'

RSpec.describe SixSaferpay::CardForm do

  subject { SpinningWheel.create('card_form') }

  let(:hash) {
    {
      holder_name: subject.holder_name
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the card' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
