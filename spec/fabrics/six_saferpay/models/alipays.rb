SpinningWheel.define do
  fabric name: 'alipay', class_name: 'SixSaferpay::Alipay' do
    local_wallet { 'TNG' }
  end
end
