SpinningWheel.define do
  fabric name: 'six_transaction_alternative_payment', class_name: 'SixSaferpay::SixTransaction::AlternativePayment' do
    request_header { SpinningWheel.create('request_header') }
    terminal_id { 12341234 }
    payment { SpinningWheel.create('payment') }
    payment_method { 'BANCONTACT' }
    payment_method_options { SpinningWheel.create('payment_method_options') }
    payer { SpinningWheel.create('payer') }
    notification { SpinningWheel.create('notification') }
    order { SpinningWheel.create('order') }
    risk_factors { SpinningWheel.create('risk_factors') }
  end
end
