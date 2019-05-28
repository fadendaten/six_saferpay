SpinningWheel.define do
  fabric name: 'six_transaction_authorize_referenced_response', class_name: 'SixSaferpay::SixTransaction::AuthorizeReferencedResponse' do
    response_header { SpinningWheel.create('response_header') }
    transaction { SpinningWheel.create('transaction') }
    payment_means { SpinningWheel.create('response_payment_means') }
    payer { SpinningWheel.create('payer') }
    dcc { SpinningWheel.create('dcc') }
  end
end
