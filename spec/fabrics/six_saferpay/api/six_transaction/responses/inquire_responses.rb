SpinningWheel.define do
  fabric name: 'six_transaction_inquire_response', class_name: 'SixSaferpay::SixTransaction::InquireResponse' do
    response_header { SpinningWheel.create('response_header') }
    transaction { SpinningWheel.create('transaction') }
    payment_means { SpinningWheel.create('response_payment_means') }
    payer { SpinningWheel.create('payer') }
    liability { SpinningWheel.create('liability') }
    dcc { SpinningWheel.create('dcc') }
  end
end
