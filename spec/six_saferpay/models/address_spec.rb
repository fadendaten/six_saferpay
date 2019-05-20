require 'spec_helper'

RSpec.describe SixSaferpay::Address do

  let(:first_name) { 'F' }
  let(:last_name) { 'FF' }
  let(:date_of_birth) { '2019-01-01'  }
  let(:company) { 'C' }
  let(:gender) { 'male' }
  let(:street) { 'L' }
  let(:zip) { 1234 }
  let(:city) { 'Bern' }
  let(:phone) { '122333' }
  let(:email) { 'test@example.com' }


  subject { described_class.new(
    first_name: first_name,
    last_name: last_name,
    date_of_birth: date_of_birth,
    company: company,
    zip: zip,
    city: city,
    phone: phone,
    email: email
  )}

  let(:hash) {
    {
      first_name: first_name,
      last_name: last_name,
      date_of_birth: date_of_birth,
      company: company,
      zip: zip,
      city: city,
      phone: phone,
      email: email
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the styling' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
