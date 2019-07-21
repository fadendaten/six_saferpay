require 'spec_helper'

RSpec.describe SixSaferpay::SixOmniChannel::AcquireTransaction do

  subject { SpinningWheel.create('six_omni_channel_acquire_transaction') }

  let(:url) { '/Payment/v1/OmniChannel/AcquireTransaction' }
  let(:response_class) { SixSaferpay::SixOmniChannel::AcquireTransactionResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      terminal_id: subject.terminal_id,
      order_id: subject.order_id,
      six_transaction_reference: subject.six_transaction_reference
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six omni channel acquire transaction' do
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
