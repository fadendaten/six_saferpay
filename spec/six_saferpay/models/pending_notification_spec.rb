require 'spec_helper'

RSpec.describe SixSaferpay::PendingNotification do

  subject { SpinningWheel.create('pending_notification') }

  let(:hash) {
    {
      merchant_emails: subject.merchant_emails,
      notify_url: subject.notify_url
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the pending notification' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
