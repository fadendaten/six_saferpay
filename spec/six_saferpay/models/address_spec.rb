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
      street2: subject.street2,
      gender: subject.gender,
      zip: subject.zip,
      city: subject.city,
      country_subdivision_code: subject.country_subdivision_code,
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

  context 'when street2 is an empty string', :focus do
    let(:address) do
      SixSaferpay::Address.new(
        first_name: subject.first_name,
        last_name: subject.last_name,
        date_of_birth: subject.date_of_birth,
        company: subject.company,
        legal_form: subject.legal_form,
        street: subject.street,
        street2: "",
        gender: subject.gender,
        zip: subject.zip,
        city: subject.city,
        country_subdivision_code: subject.country_subdivision_code,
        country_code: subject.country_code,
        phone: subject.phone,
        email: subject.email,
      )
    end

    it 'is not added to the hash' do
      expect(address.to_hash.keys).not_to include(:street2)
    end
  end
end
