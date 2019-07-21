SpinningWheel.define do
  fabric name: 'update_payment_means', class_name: 'SixSaferpay::UpdatePaymentMeans' do
    card { SpinningWheel.create('update_card') }
  end
end
