SpinningWheel.define do
  fabric name: 'six_transaction_adjust_amount', class_name: 'SixSaferpay::SixTransaction::AdjustAmount' do
    request_header { SpinningWheel.create('request_header') }
    token { '234uhfh78234hlasdfh8234e' }
    amount { SpinningWheel.create('amount') }
  end
end
