SpinningWheel.define do
  fabric name: 'pending_notification', class_name: 'SixSaferpay::PendingNotification' do
    merchant_email { 'merchant@saferpay.com' }
    notify_url { 'https://merchanthost/pendingnotify' }
  end
end
