SpinningWheel.define do
  fabric name: 'six_transaction_initialize_response', class_name: 'SixSaferpay::SixTransaction::InitializeResponse' do
    response_header { SpinningWheel.create('response_header') }
    token { '234uhfh78234hlasdfh8234e' }
    expiration { '2015-01-30T13:45:22.258+02:00' }
    liability_shift { false }
    redirect_required { false }
    redirect { SpinningWheel.create('redirect') }
  end
end
