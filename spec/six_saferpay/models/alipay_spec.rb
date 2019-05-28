require 'spec_helper'

RSpec.describe SixSaferpay::Alipay do

  subject { SpinningWheel.create('alipay') }

  let(:hash) {
    {
      local_wallet: subject.local_wallet
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the alipay' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
