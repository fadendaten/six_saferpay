SpinningWheel.define do
  fabric name: 'response_header', class_name: 'SixSaferpay::ResponseHeader' do
    request_id { 1 }
    spec_version { '1.11' }
  end
end
