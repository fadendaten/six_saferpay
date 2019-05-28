require 'spec_helper'

RSpec.describe SixSaferpay::SixOmniChannel::InsertAliasResponse do

  subject { SpinningWheel.create('six_omni_channel_insert_alias_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      fd_alias: subject.fd_alias.to_h,
      payment_means: subject.payment_means.to_h,
      check_result: subject.check_result.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six omni channel aquire transaction response' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
