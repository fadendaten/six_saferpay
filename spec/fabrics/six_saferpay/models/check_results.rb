SpinningWheel.define do
  fabric name: 'check_result', class_name: 'SixSaferpay::CheckResult' do
    result { 'OK' }
    message { 'Online card check was successful.' }
  end
end

SpinningWheel.define do
  fabric name: 'check_result_ok_authenticated', class_name: 'SixSaferpay::CheckResult' do
    result { 'OK_AUTHENTICATED' }
    message { 'Online card check was successful.' }
  end
end
