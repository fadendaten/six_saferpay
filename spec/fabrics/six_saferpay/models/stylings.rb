SpinningWheel.define do
  fabric name: 'styling', class_name: 'SixSaferpay::Styling' do
    css_url { 'https://merchanthost/merchant.css' }
    content_security_enabled { false }
    theme { 'DEFAULT' }
  end
end
