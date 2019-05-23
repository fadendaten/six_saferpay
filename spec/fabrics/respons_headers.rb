SpinningWheel.define do
  fabric name: 'response_header', class_name: 'SixSaferpay::ResponseHeader' do
    request_id { SecureRandom.uuid }
    spec_version { SixSaferpay::API::VERSION }
  end
end
