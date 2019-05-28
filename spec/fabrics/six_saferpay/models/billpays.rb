SpinningWheel.define do
  fabric name: 'billpay', class_name: 'SixSaferpay::Billpay' do
    delay_in_days { 10 }
  end
end
