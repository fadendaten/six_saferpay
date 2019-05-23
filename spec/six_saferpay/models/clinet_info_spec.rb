require 'spec_helper'

RSpec.describe SixSaferpay::ClientInfo do

  subject { SpinningWheel.create('client_info') }

  let(:hash) {
    {
      shop_info: subject.shop_info,
      os_info: subject.os_info
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the client info' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
