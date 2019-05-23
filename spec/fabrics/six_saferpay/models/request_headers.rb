SpinningWheel.define do
  fabric name: 'request_header', class_name: 'SixSaferpay::RequestHeader' do
    spec_version { SixSaferpay::API::VERSION }
    customer_id { SixSaferpay.config.customer_id }
    request_id { SecureRandom.uuid }
    retry_indicator { 0 }
    client_info { SpinningWheel.create('client_info') }
  end
end
