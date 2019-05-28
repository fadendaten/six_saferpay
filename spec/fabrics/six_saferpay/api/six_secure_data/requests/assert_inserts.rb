SpinningWheel.define do
  fabric name: 'six_secure_data_assert_insert', class_name: 'SixSaferpay::SixSecureData::AssertInsert' do
    request_header { SpinningWheel.create('request_header') }
    token { '234uhfh78234hlasdfh8234e' }
  end
end
