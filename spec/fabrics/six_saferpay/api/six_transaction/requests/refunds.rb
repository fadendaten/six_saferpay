SpinningWheel.define do
  fabric name: 'six_transaction_refund', class_name: 'SixSaferpay::SixTransaction::Refund' do
    request_header { SpinningWheel.create('request_header') }
    refund { SpinningWheel.create('refund') }
    capture_reference { SpinningWheel.create('capture_reference') }
    pending_notification { SpinningWheel.create('pending_notification') }
  end
end
