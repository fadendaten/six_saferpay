SpinningWheel.define do
  fabric name: 'six_transaction_authorize', class_name: 'SixSaferpay::SixTransaction::Authorize' do
    request_header { SpinningWheel.create('request_header') }
    token { '234uhfh78234hlasdfh8234e' }
    condition { 'WITH_LIABILITY_SHIFT' }
    verification_code { '123' }
    register_alias { SpinningWheel.create('register_alias') }
  end
end
