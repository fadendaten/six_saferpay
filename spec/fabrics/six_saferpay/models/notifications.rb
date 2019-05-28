SpinningWheel.define do
  fabric name: 'notification', class_name: 'SixSaferpay::Notification' do
    merchant_email { 'merchant@saferpay.com' }
    payer_email { 'payer@saferpay.com' }
    notify_url { 'https://merchanthost/notify' }
  end
end
