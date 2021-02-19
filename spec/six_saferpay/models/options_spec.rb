require 'spec_helper'

RSpec.describe SixSaferpay::Options do

subject { SpinningWheel.create('options') }

  let(:hash) {
    {
        pre_auth: subject.pre_auth,
        allow_partial_authorization: subject.allow_partial_authorization,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the Options' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
