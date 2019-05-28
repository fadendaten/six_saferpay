require 'spec_helper'

RSpec.describe SixSaferpay::Liability do

  subject { SpinningWheel.create('liability') }

  let(:hash) {
    {
      liability_shift: subject.liability_shift,
      liable_entity: subject.liable_entity,
      three_ds: subject.three_ds.to_h,
      fraud_free: subject.fraud_free.to_h
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the liability' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
