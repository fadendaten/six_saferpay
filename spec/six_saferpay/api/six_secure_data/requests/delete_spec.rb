require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::Delete do

  subject { SpinningWheel.create('six_secure_data_delete') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      alias_id: subject.alias_id
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure data delete' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
