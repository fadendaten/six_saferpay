require 'spec_helper'

RSpec.describe SixSaferpay::SixOmniChannel::InsertAlias do

  subject { SpinningWheel.create('six_omni_channel_insert_alias') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      register_alias: subject.register_alias.to_h,
      six_transaction_reference: subject.six_transaction_reference
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six omni channel insert alias' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
