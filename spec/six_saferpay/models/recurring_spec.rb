require 'spec_helper'

RSpec.describe SixSaferpay::Recurring do

  subject { SpinningWheel.create('recurring') }

  let(:hash) {
    {
      initial: subject.initial
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the recurring' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
