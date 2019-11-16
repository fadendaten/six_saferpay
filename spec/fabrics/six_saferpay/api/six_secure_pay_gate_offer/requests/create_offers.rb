SpinningWheel.define do
  fabric name: 'six_secure_pay_gate_offer_create_offer', class_name: 'SixSaferpay::SixSecurePayGateOffer::CreateOffer' do
    payment { SpinningWheel.create('payment') }
    expiration_date { '2019-10-20' }
    config_set { 'name of your payment page config (case-insensitive)' }
    payer { SpinningWheel.create('payer') }
    billing_address_form { SpinningWheel.create('address_form') }
  end
end
