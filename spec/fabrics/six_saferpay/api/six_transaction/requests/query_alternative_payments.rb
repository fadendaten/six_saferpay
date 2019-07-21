SpinningWheel.define do
  fabric name: 'six_transaction_query_alternative_payment', class_name: 'SixSaferpay::SixTransaction::QueryAlternativePayment' do
    request_header { SpinningWheel.create('request_header') }
    token { '234uhfh78234hlasdfh8234e' }
  end
end
