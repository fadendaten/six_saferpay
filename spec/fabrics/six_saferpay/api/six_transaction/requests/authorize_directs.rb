SpinningWheel.define do
  fabric name: 'six_transaction_authorize_direct', class_name: 'SixSaferpay::SixTransaction::AuthorizeDirect' do
    request_header { SpinningWheel.create('request_header') }
    terminal_id { SixSaferpay.config.terminal_id }
    payment { SpinningWheel.create('payment') }
    payment_means { SpinningWheel.create('request_payment_means') }
    authentication { SpinningWheel.create('authentication') }
    register_alias { SpinningWheel.create('register_alias') }
    payer { SpinningWheel.create('payer') }
    order { SpinningWheel.create('order') }
    risk_factors { SpinningWheel.create('risk_factors') }
  end
end
