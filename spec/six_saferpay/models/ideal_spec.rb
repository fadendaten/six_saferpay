require 'spec_helper'

RSpec.describe SixSaferpay::Ideal do

  subject { SpinningWheel.create('ideal') }

  let(:hash) {
    {
      issuer_id: subject.issuer_id,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the ideal' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
