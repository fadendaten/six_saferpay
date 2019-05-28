SpinningWheel.define do
  fabric name: 'six_secure_data_insert_direct', class_name: 'SixSaferpay::SixSecureData::InsertDirect' do
    request_header { SpinningWheel.create('request_header') }
    register_alias { SpinningWheel.create('register_alias') }
    payment_means { SpinningWheel.create('request_payment_means') }
    check { SpinningWheel.create('check') }
  end
end
