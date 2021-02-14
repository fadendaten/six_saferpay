require 'spec_helper'

RSpec.describe SixSaferpay::Authentication do

  subject { SpinningWheel.create('authentication') }

  let(:hash) {
    {
      result: subject.result,
      message: subject.message,
      xid: subject.xid,
      exemption: subject.exemption,
      three_ds_challenge: subject.three_ds_challenge
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the authentication' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
