SpinningWheel.define do
  fabric name: 'six_transaction_multipart_capture', class_name: 'SixSaferpay::SixTransaction::MultipartCapture' do
    request_header { SpinningWheel.create('request_header') }
    transaction_reference { SpinningWheel.create('transaction_reference') }
    amount { SpinningWheel.create('amount') }
    type { 'PARTIAL' }
    order_part_id { 'kh9ngajrfe6wfu3d0c' }
    marketplace { SpinningWheel.create('marketplace') }
  end
end
