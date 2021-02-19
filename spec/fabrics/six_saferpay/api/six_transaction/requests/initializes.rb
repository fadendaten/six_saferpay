SpinningWheel.define do
  fabric name: 'six_transaction_initialize', class_name: 'SixSaferpay::SixTransaction::Initialize' do
    request_header { SpinningWheel.create('request_header') }
    terminal_id { SixSaferpay.config.terminal_id || '12341234' }
    payment { SpinningWheel.create('payment') }
    payment_means { SpinningWheel.create('request_payment_means') }
    authentication { SpinningWheel.create('authentication') }
    payer { SpinningWheel.create('payer') }
    return_urls { SpinningWheel.create('return_urls') }
    styling { SpinningWheel.create('styling') }
    wallet { SpinningWheel.create('wallet') }
    payment_methods { ["VISA", "MASTERCARD"] }
    card_form { SpinningWheel.create('card_form') }
    order { SpinningWheel.create('order') }
    risk_factors { SpinningWheel.create('risk_factors') }
  end
end
