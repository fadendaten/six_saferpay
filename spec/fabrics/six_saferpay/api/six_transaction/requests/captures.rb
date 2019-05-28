SpinningWheel.define do
  fabric name: 'six_transaction_capture', class_name: 'SixSaferpay::SixTransaction::Capture' do
    request_header { SpinningWheel.create('request_header') }
    transaction_reference { SpinningWheel.create('transaction_reference') }
    amount { SpinningWheel.create('amount') }
    billpay { SpinningWheel.create('billpay') }
    pending_notifiction { SpinningWheel.create('pending_notifiction') }
    marketplace { SpinningWheel.create('marketplace') }
  end
end
