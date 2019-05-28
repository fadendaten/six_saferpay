require 'spec_helper'

RSpec.describe SixSaferpay::Check do

  subject { SpinningWheel.create('check') }

  let(:hash) {
    {
      type: subject.type,
      terminal_id: subject.terminal_id
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the check' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
