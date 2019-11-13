SpinningWheel.define do
  fabric name: 'address', class_name: 'SixSaferpay::Address' do
    first_name { 'John' }
    last_name { 'Doe' }
    date_of_birth { '1990-05-31' }
    company { 'ACME Corp.'}
    gender { 'COMPANY' }
    legal_form { 'AG' }
    street { 'Bakerstreet 32' }
    street2 { 'Stewart House' }
    zip { '8000' }
    city { 'Zurich' }
    country_subdevision_code { 'ZH' }
    country_code { 'CH' }
    phone { '+41 12 345 6789' }
    email { 'payer@provider.com' }
  end
end
