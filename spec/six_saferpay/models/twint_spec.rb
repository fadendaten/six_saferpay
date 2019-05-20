require 'spec_helper'

RSpec.describe SixSaferpay::Twint do

  let(:certificate_expiration_date) { DateTime.parse('2019-05-21T00:56:41+02:00') }

  subject { described_class.new(certificate_expiration_date: certificate_expiration_date) }

  let(:hash) {
    {
      certificate_expiration_date: certificate_expiration_date
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the styling' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
