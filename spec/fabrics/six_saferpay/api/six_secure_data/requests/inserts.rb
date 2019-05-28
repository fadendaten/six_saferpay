SpinningWheel.define do
  fabric name: 'six_secure_data_insert', class_name: 'SixSaferpay::SixSecureData::Insert' do
    request_header { SpinningWheel.create('request_header') }
    register_alias { SpinningWheel.create('register_alias') }
    type { 'CARD' }
    return_urls  { SpinningWheel.create('return_urls') }
    styling { SpinningWheel.create('styling') }
    language_code { 'de' }
    check { SpinningWheel.create('check') }
    payment_methods { ["VISA", "MASTERCARD"] }
    card_form { SpinningWheel.create('card_form') }
  end
end
