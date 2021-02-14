SpinningWheel.define do
  fabric name: 'authentication', class_name: 'SixSaferpay::Authentication' do
    result { 'OK' }
    message { 'Card holder authentication with 3DSv2 successful.' }
    xid { '1ef5b3db-3b97-47df-8272-320d0bd18ab5' }
    exemption { 'LOW_VALUE' }
    three_ds_challenge { 'FORCE' }
  end
end
