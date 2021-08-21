require 'spec_helper'

RSpec.describe SixSaferpay::Order do

subject { SpinningWheel.create('order') }

  let(:hash) {
    items_array = []
    subject.items.each {|item| items_array << item }

    {
      items: items_array
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the Order' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
