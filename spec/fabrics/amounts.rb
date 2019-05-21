SpinningWheel.define do
  fabric name: 'amount', class_name: 'SixSaferpay::Amount' do
    value { '100' }
    currency_code { 'CHF' }
  end
end
