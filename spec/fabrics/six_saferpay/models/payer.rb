SpinningWheel.define do
  fabric name: 'payer', class_name: 'SixSaferpay::Payer' do
    ip_address { '111.111.111.111' }
    ip_location { 'NZ' }
    language_code { 'de' }
    delivery_address { SpinningWheel.create('address') }
    billing_address { SpinningWheel.create('address') }
  end
end
