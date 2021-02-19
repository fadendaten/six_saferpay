SpinningWheel.define do
  fabric name: 'six_payment_page_initialize', class_name: 'SixSaferpay::SixPaymentPage::Initialize' do
    request_header { SpinningWheel.create('request_header') }
    config_set { 'name of your payment page config (case-insensitive)' }
    terminal_id { SixSaferpay.config.terminal_id }
    payment { SpinningWheel.create('payment') }
    payment_methods { ["VISA", "MASTERCARD"] }
    payment_methods_options { SpinningWheel.create('payment_methods_options') }
    authentication { SpinningWheel.create('authentication') }
    wallets { ["MASTERPASS"] }
    payer { SpinningWheel.create('payer') }
    register_alias { SpinningWheel.create('register_alias') }
    return_urls { SpinningWheel.create('return_urls') }
    notification { SpinningWheel.create('notification') }
    styling { SpinningWheel.create('styling') }
    billing_address_form { SpinningWheel.create('address_form') }
    delivery_address_form { SpinningWheel.create('address_form') }
    card_form { SpinningWheel.create('card_form') }
    condition { 'IF_ALLOWED_BY_SCHEME' }
    order { SpinningWheel.create('order') }
  end
end
