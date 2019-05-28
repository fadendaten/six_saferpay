require 'spec_helper'

RSpec.describe SixSaferpay::RegisterAlias do

  subject { SpinningWheel.create('register_alias') }

  let(:hash) {
    {
      id_generator: subject.id_generator,
      id: subject.id,
      lifetime: subject.lifetime
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the register alias' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
