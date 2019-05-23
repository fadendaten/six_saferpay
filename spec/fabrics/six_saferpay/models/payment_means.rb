SpinningWheel.define do
  fabric name: 'request_payment_means', class_name: 'SixSaferpay::RequestPaymentMeans' do
    card { SpinningWheel.create('request_card') }
    bank_account { SpinningWheel.create('bank_account') }
    fd_alias { SpinningWheel.create('payment_means_alias') }
  end
end

SpinningWheel.define do
  fabric name: 'response_payment_means', class_name: 'SixSaferpay::ResponsePaymentMeans' do
    brand { SpinningWheel.create('brand') }
    display_text { 'DisplayText' }
    wallet { 'MasterPass' }
    card { SpinningWheel.create('response_card') }
    bank_account { SpinningWheel.create('bank_account') }
    twint { SpinningWheel.create('twint') }
  end
end
