SpinningWheel.define do
  fabric name: 'authentication_result', class_name: 'SixSaferpay::AuthenticationResult' do
    result { 'OK' }
    message { 'Card holder authentication with 3DSv2 successful.' }
  end
end
