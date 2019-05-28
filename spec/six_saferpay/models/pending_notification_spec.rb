require 'spec_helper'

RSpec.describe SixSaferpay::PendingNotification do

  subject { SpinningWheel.create('pending_notifiction') }

  let(:hash) {
    {
      merchant_email: subject.merchant_email,
      notify_url: subject.notify_url
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the pending notifiction' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
