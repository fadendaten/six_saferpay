SpinningWheel.define do
  fabric name: 'brand', class_name: 'SixSaferpay::Brand' do
    payment_method { 'AMEX' }
    name { 'SaferpayTestCard' }
  end
end
