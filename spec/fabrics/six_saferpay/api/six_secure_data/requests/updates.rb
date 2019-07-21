SpinningWheel.define do
  fabric name: 'six_secure_data_update', class_name: 'SixSaferpay::SixSecureData::Update' do
    request_header { SpinningWheel.create('request_header') }
    update_alias { SpinningWheel.create('update_alias') }
    update_payment_means { SpinningWheel.create('update_payment_means') }
  end
end
