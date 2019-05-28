SpinningWheel.define do
  fabric name: 'six_transaction_multipart_finalize', class_name: 'SixSaferpay::SixTransaction::MultipartFinalize' do
    request_header { SpinningWheel.create('request_header') }
    transaction_reference { SpinningWheel.create('transaction_reference') }
  end
end
