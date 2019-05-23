require 'spec_helper'

RSpec.describe SixSaferpay::Amount do

  subject { SpinningWheel.create('amount') }

  let(:hash) {
    {
      value: subject.value,
      currency_code: subject.currency_code
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the amount' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
