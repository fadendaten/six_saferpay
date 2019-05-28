require 'spec_helper'

RSpec.describe SixSaferpay::SixOmniChannel::AcquireTransaction do

  subject { SpinningWheel.create('six_omni_channel_acquire_transaction') }

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
end
