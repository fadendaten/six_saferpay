SpinningWheel.define do
  fabric name: 'six_secure_data_insert_response', class_name: 'SixSaferpay::SixSecureData::InsertResponse' do
    response_header { SpinningWheel.create('response_header') }
    token { '234uhfh78234hlasdfh8234e' }
    expiration { '2015-01-30T13:45:22.258+02:00' }
    redirect_url { 'https://www.saferpay.com/VT2/api/...' }
  end
end
