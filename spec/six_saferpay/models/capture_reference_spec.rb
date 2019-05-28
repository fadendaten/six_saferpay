require 'spec_helper'

RSpec.describe SixSaferpay::CaptureReference do

  subject { SpinningWheel.create('capture_reference') }

  let(:hash) {
    {
      capture_id: subject.capture_id,
      transaction_id: subject.transaction_id,
      order_id: subject.order_id,
      order_part_id: subject.order_part_id
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the capture reference' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
