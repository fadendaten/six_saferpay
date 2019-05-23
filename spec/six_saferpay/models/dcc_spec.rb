require 'spec_helper'

RSpec.describe SixSaferpay::Dcc do

  subject { SpinningWheel.create('dcc') }

  let(:hash) {
    {
      payer_amount: subject.payer_amount.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the dcc' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
