require 'spec_helper'

RSpec.describe SixSaferpay::SaferpayFields do

  subject { SpinningWheel.create('saferpay_fields') }

  let(:hash) {
    {
      token: subject.token
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the saferpay fields' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
