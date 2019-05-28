require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::DeleteResponse do

  subject { SpinningWheel.create('six_secure_data_delete_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure card delete response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
