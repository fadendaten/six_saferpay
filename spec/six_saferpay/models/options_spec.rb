require 'spec_helper'

RSpec.describe SixSaferpay::Options do

  subject { SpinningWheel.create('options') }

  let(:hash) {
    {
      pre_auth: subject.pre_auth
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the options' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
