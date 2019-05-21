require 'spec_helper'

RSpec.describe SixSaferpay::Dcc do

  let(:dcc) { SpinningWheel.create('dcc') }

  let(:hash) {
    {
      payer_amount: dcc.payer_amount.to_h
    }
  }

  subject { dcc }

  describe 'to_hash' do
    it 'returns the hash representation of the dcc' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
