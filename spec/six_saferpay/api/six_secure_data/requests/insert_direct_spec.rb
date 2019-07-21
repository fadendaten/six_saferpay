require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::InsertDirect do

  subject { SpinningWheel.create('six_secure_data_insert_direct') }

  let(:url) { '/Payment/v1/Alias/InsertDirect' }
  let(:response_class) { SixSaferpay::SixSecureData::InsertDirectResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      register_alias: subject.register_alias.to_h,
      payment_means: subject.payment_means.to_h,
      check: subject.check.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure data insert direct' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  describe 'to_json' do
    it { expect(subject.to_json).to eq(hash.to_json) }
  end

  describe 'url' do
    it { expect(subject.url).to eq(url) }
  end

  describe 'response_class' do
    it { expect(subject.response_class).to eq(response_class) }
  end
end
