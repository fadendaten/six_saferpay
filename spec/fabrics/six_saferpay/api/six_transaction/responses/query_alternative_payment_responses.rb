SpinningWheel.define do
  fabric name: 'six_transaction_query_alternative_payment_response', class_name: 'SixSaferpay::SixTransaction::QueryAlternativePaymentResponse' do
    response_header { SpinningWheel.create('response_header') }
    transaction { SpinningWheel.create('transaction') }
    payment_means { SpinningWheel.create('response_payment_means') }
    payer { SpinningWheel.create('payer') }
    liability { SpinningWheel.create('liability') }
    fraud_prevention { SpinningWheel.create('fraud_prevention') }
  end
end
