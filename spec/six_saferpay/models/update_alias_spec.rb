require 'spec_helper'

RSpec.describe SixSaferpay::UpdateAlias do

  subject { SpinningWheel.create('update_alias') }

  let(:hash) {
    {
      id: subject.id,
      lifetime: subject.lifetime
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the update alias' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
