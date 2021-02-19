require 'spec_helper'

RSpec.describe SixSaferpay::Order do

subject { SpinningWheel.create('order') }

  let(:hash) {
    {
        items: subject.items.to_h,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the Order' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
