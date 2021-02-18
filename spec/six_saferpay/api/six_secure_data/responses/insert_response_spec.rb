require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::InsertResponse do

  subject { SpinningWheel.create('six_secure_data_insert_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      token: subject.token,
      expiration: subject.expiration,
      redirect_required: subject.redirect_required,
      redirect: subject.redirect.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure card insert response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
