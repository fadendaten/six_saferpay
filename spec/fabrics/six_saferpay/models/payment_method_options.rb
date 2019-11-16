SpinningWheel.define do
  fabric name: 'payment_method_options', class_name: 'SixSaferpay::PaymentMethodOptions' do
    bankcontact { SpinningWheel.create('bankcontact') }
  end
end
