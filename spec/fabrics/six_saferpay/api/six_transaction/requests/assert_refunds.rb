SpinningWheel.define do
  fabric name: 'six_transaction_assert_refund', class_name: 'SixSaferpay::SixTransaction::AssertRefund' do
    request_header { SpinningWheel.create('request_header') }
    transaction_reference { SpinningWheel.create('transaction_reference') }
  end
end
