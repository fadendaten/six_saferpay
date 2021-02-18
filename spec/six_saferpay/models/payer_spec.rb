require 'spec_helper'

RSpec.describe SixSaferpay::Payer do

  subject { SpinningWheel.create('payer') }

  let(:hash) {
    {
      id: subject.id,
      ip_address: subject.ip_address,
      ip_location: subject.ip_location,
      language_code: subject.language_code,
      delivery_address: subject.delivery_address.to_h,
      billing_address: subject.billing_address.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the payer' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
