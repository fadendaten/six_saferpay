SpinningWheel.define do
  fabric name: 'check_result', class_name: 'SixSaferpay::CheckResult' do
    result { 'OK' }
    message { 'Online card check was successful.' }
  end
end
