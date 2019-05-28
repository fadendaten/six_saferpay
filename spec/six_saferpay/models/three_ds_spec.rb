
require 'spec_helper'

RSpec.describe SixSaferpay::ThreeDs do

  subject { SpinningWheel.create('three_ds') }

  let(:hash) {
    {
      authenticated: subject.authenticated,
      liability_shift: subject.liability_shift,
      xid: subject.xid,
      verification_value: subject.verification_value
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the three ds' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
