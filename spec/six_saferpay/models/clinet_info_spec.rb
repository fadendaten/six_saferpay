require 'spec_helper'

RSpec.describe SixSaferpay::ClientInfo do

  let(:shop_info) { 'Shop ABC' }
  let(:os_info) { 'Linux' }
  let(:hash) {
    {
      ClientInfo: {
        ShopInfo: shop_info,
        OsInfo: os_info
      }
    }
  }

  subject { described_class.new(shop_info: shop_info, os_info: os_info) }

  describe 'to_hash' do
    it 'returns the hash representation of the client info' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  context 'validations', :skip do
    let(:shop_info_number) { 123 }

    subject { described_class }

    describe 'validate :shop_info_number' do
      it 'should raise an error' do
        expect(subject.new(shop_info: shop_info_number)).to raise_error(SixSaferpay::Error)
      end

    end

  end

end
