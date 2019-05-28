SpinningWheel.define do
  fabric name: 'payment_methods_options', class_name: 'SixSaferpay::PaymentMethodsOptions' do
    alipay { SpinningWheel.create('alipay') }
  end
end
