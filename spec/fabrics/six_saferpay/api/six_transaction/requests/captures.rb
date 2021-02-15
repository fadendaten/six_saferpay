SpinningWheel.define do
  fabric name: 'six_transaction_capture', class_name: 'SixSaferpay::SixTransaction::Capture' do
    request_header { SpinningWheel.create('request_header') }
    transaction_reference { SpinningWheel.create('transaction_reference') }
    amount { SpinningWheel.create('amount') }
    billpay { SpinningWheel.create('billpay') }
    pending_notification { SpinningWheel.create('pending_notification') }
    marketplace { SpinningWheel.create('marketplace') }
    mastercard_issuer_installments { SpinningWheel.create('mastercard_issuer_installments') }
  end
end
