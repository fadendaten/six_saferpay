require 'spec_helper'

RSpec.describe SixSaferpay::ClientInfo do

  let(:shop_info) { 'Shop ABC' }
  let(:os_info) { 'Linux' }
  let(:hash) {
    {
      shop_info: shop_info,
      os_info: os_info
    }
  }

  subject { described_class.new(shop_info: shop_info, os_info: os_info) }

  describe 'to_hash' do
    it 'returns the hash representation of the client info' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
