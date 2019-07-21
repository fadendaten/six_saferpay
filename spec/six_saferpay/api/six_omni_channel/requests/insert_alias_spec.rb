require 'spec_helper'

RSpec.describe SixSaferpay::SixOmniChannel::InsertAlias do

  subject { SpinningWheel.create('six_omni_channel_insert_alias') }

  let(:url) { '/Payment/v1/OmniChannel/InsertAlias' }
  let(:response_class) { SixSaferpay::SixOmniChannel::InsertAliasResponse }

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
