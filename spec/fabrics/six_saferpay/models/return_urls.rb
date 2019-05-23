SpinningWheel.define do
  fabric name: 'return_urls', class_name: 'SixSaferpay::ReturnUrls' do
    success { 'https://merchanthost/success' }
    fd_fail { 'https://merchanthost/fail' }
    fd_abort { 'https://merchanthost/abort' }
  end
end
