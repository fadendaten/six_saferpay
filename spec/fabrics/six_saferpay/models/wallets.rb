SpinningWheel.define do
  fabric name: 'wallet', class_name: 'SixSaferpay::Wallet' do
    type {  'type' }
    payment_methods {  ['method_1'] }
    request_delivery_address {  'request_delivery_address' }
    enable_amount_adjustment {  'enable_amount_adjustment' }
  end
end
