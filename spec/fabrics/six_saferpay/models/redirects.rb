SpinningWheel.define do
  fabric name: 'redirect', class_name: 'SixSaferpay::Redirect' do
    redirect_url { 'https://www.saferpay.com/VT2/api/...' }
    payment_means_required { false }
  end
end
