require 'spec_helper'

RSpec.describe SixSaferpay::VerificationCode do

  let(:code) { '123' }

  subject { described_class.new(code: code) }

  let(:hash) {
      {
        VerificationCode: code
      }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the verification code' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
