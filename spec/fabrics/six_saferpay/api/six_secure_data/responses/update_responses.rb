SpinningWheel.define do
  fabric name: 'six_secure_data_update_response', class_name: 'SixSaferpay::SixSecureData::UpdateResponse' do
    response_header { SpinningWheel.create('response_header') }
    fd_alias { SpinningWheel.create('alias') }
    payment_means { SpinningWheel.create('response_payment_means') }
  end
end
