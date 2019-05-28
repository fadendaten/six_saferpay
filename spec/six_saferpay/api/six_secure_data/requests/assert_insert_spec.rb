require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::AssertInsert do

  subject { SpinningWheel.create('six_secure_data_assert_insert') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      token: subject.token
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure data assert insert' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
