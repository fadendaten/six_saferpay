require 'spec_helper'

RSpec.describe SixSaferpay::Notification do

  subject { SpinningWheel.create('notification') }

  let(:hash) {
    {
      merchant_email: subject.merchant_email,
      payer_email: subject.payer_email,
      notify_url: subject.notify_url
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the notification' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
