require 'spec_helper'

RSpec.describe SixSaferpay::Billpay do

  subject { SpinningWheel.create('billpay') }

  let(:hash) {
    {
      delay_in_days: subject.delay_in_days
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the billpay' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
