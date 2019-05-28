SpinningWheel.define do
  fabric name: 'six_transaction_assert_capture', class_name: 'SixSaferpay::SixTransaction::AssertCapture' do
    request_header { SpinningWheel.create('request_header') }
    capture_reference { SpinningWheel.create('capture_reference') }
  end
end
