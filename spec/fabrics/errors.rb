SpinningWheel.define do
  fabric name: 'error', class_name: 'SixSaferpay::Error' do
    response_header { SpinningWheel.create('response_header')}
    behavior { 'ABORT' }
    error_name { 'ErrorName' }
    error_message { 'This is an error' }
    transaction_id { 123 }
    error_detail { ['Error Details'] }
  end
end
