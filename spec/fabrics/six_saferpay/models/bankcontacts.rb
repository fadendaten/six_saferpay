SpinningWheel.define do
  fabric name: 'bankcontact', class_name: 'SixSaferpay::Bankcontact' do
    app_default_redirect_url { 'http://example.com' }
    app_completion_redirect_url { 'http://example.com' }
  end
end
