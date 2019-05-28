SpinningWheel.define do
  fabric name: 'six_transaction_multipart_finalize_response', class_name: 'SixSaferpay::SixTransaction::MultipartFinalizeResponse' do
    response_header { SpinningWheel.create('response_header') }
  end
end
