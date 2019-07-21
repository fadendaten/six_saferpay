require 'spec_helper'

RSpec.describe SixSaferpay::ResponseHeader do

  let(:error) { SpinningWheel.create('error') }

  let(:hash) {
    {
      response_header: error.response_header.to_h,
      behavior: error.behavior,
      error_name: error.error_name,
      error_message: error.error_message,
      transaction_id: error.transaction_id,
      error_detail: error.error_detail
    }
  }

  let(:error_string) do
    "#{error.behavior}: #{error.error_name} - #{error.error_message}\n#{error.error_detail.first}"
  end

  subject { error }

  describe 'to_hash' do
    it 'returns the hash representation of the response header' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  describe 'to_s' do
    it do
      expect(subject.to_s).to eq(error_string)
    end
  end

  describe 'full_message' do
    it do
      expect(subject.full_message).to eq(error_string)
    end
  end

  describe 'message' do 
    it { expect(subject.message).to eq(error_string) }
  end
end
