SpinningWheel.define do
  fabric name: 'authentication', class_name: 'SixSaferpay::Authentication' do
    exemption { 'LOW_VALUE' }
    three_ds_challenge { 'FORCE' }
  end
end
