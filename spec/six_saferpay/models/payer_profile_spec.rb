require 'spec_helper'

RSpec.describe SixSaferpay::PayerProfile do

subject { SpinningWheel.create('payer_profile') }

  let(:hash) {
    {
        has_account: subject.has_account,
        has_password: subject.has_password,
        password_forgotten: subject.password_forgotten,
        first_name: subject.first_name,
        last_name: subject.last_name,
        company: subject.company,
        date_of_birth: subject.date_of_birth,
        last_login_date: subject.last_login_date,
        gender: subject.gender,
        creation_date: subject.creation_date,
        password_last_change_date: subject.password_last_change_date,
        email: subject.email,
        secondary_email: subject.secondary_email,
        phone: subject.phone.to_h,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the PayerProfile' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
