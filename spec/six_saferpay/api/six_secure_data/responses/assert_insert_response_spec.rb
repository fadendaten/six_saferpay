require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::AssertInsertResponse do

  subject { SpinningWheel.create('six_secure_data_assert_insert_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      fd_alias: subject.fd_alias.to_h,
      payment_means: subject.payment_means.to_h,
      check_result: subject.check_result.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure card assert insert response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
