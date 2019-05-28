require 'spec_helper'

RSpec.describe SixSaferpay::Alias do

  subject { SpinningWheel.create('alias') }

  let(:hash) {
    {
      id: subject.id,
      lifetime: subject.lifetime
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the alias' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
