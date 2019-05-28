SpinningWheel.define do
  fabric name: 'six_transaction_query_payment_means', class_name: 'SixSaferpay::SixTransaction::QueryPaymentMeans' do
    request_header { SpinningWheel.create('request_header') }
    token { '234uhfh78234hlasdfh8234e' }
    return_urls { SpinningWheel.create('return_urls') }
  end
end
