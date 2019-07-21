SpinningWheel.define do
  fabric name: 'bancontact', class_name: 'SixSaferpay::Bancontact' do
    qr_code_data { 'qr_code_data' }
    intent_url { 'intent_url' }
  end
end
