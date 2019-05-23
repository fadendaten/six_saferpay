require 'spec_helper'

RSpec.describe SixSaferpay::Address do

  subject { SpinningWheel.create('address') }

  let(:hash) {
    {
      first_name: subject.first_name,
      last_name: subject.last_name,
      date_of_birth: subject.date_of_birth,
      company: subject.company,
      legal_form: subject.legal_form,
      street: subject.street,
      street_2: subject.street_2,
      gender: subject.gender,
      zip: subject.zip,
      city: subject.city,
      country_subdevision_code: subject.country_subdevision_code,
      country_code: subject.country_code,
      phone: subject.phone,
      email: subject.email
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the address' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
