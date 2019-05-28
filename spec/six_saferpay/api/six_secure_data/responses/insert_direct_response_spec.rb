require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::InsertDirectResponse do

  subject { SpinningWheel.create('six_secure_data_insert_direct_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      fd_alias: subject.fd_alias.to_h,
      payment_means: subject.payment_means.to_h,
      check_result: subject.check_result.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure card insert direct response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
