SpinningWheel.define do
  fabric name: 'payer_profile', class_name: 'SixSaferpay::PayerProfile' do
    has_account { true }
    has_password { true }
    password_forgotten { true }
    first_name { 'John' }
    last_name { 'Doe' }
    company { 'Fadendaten GmbH' }
    date_of_birth { '1990-05-31' }
    last_login_date { '2018-05-25T18:12:43Z' }
    gender { 'DIVERSE' }
    creation_date { '2018-05-25T19:12:43+01:00' }
    password_last_change_date { '2018-05-25T19:12:43+01:00' }
    email { 'payer@provider.com' }
    secondary_email { 'payer_secondary@provider.com' }
    phone { SpinningWheel.create('phone') }
  end
end
