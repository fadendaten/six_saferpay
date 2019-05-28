require 'spec_helper'

RSpec.describe SixSaferpay::AddressForm do

  subject { SpinningWheel.create('address_form') }

  let(:hash) {
    {
      display: subject.display,
      mandatory_fields: subject.mandatory_fields
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the mandatory fields' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
