require 'spec_helper'

RSpec.describe SixSaferpay::Installment do

  subject { SpinningWheel.create('installment') }

  let(:hash) {
    {
      initial: subject.initial,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the installment' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
