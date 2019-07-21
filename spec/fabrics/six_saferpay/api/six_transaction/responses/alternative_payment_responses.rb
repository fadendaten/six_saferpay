SpinningWheel.define do
  fabric name: 'six_transaction_alternative_payment_response', class_name: 'SixSaferpay::SixTransaction::AlternativePaymentResponse' do
    response_header { SpinningWheel.create('response_header') }
    token { '234uhfh78234hlasdfh8234e' }
    expiration { '2015-01-30T13:45:22.258+02:00' }
    processing_data { SpinningWheel.create('processing_data') }
  end
end
