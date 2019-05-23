require 'spec_helper'

RSpec.describe SixSaferpay::Twint do

  subject { SpinningWheel.create('twint') }

  let(:hash) {
    {
      certificate_expiration_date: subject.certificate_expiration_date
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the twint' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
