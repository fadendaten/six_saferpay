SpinningWheel.define do
  fabric name: 'six_secure_data_delete_response', class_name: 'SixSaferpay::SixSecureData::DeleteResponse' do
    response_header { SpinningWheel.create('response_header') }
  end
end
