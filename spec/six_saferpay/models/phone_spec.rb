require 'spec_helper'

RSpec.describe SixSaferpay::Phone do

subject { SpinningWheel.create('phone') }

  let(:hash) {
    {
        main: subject.main,
        mobile: subject.mobile,
        work: subject.work,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the Phone' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
