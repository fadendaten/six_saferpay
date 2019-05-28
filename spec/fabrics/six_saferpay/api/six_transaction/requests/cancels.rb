SpinningWheel.define do
  fabric name: 'six_transaction_cancel', class_name: 'SixSaferpay::SixTransaction::Cancel' do
    request_header { SpinningWheel.create('request_header') }
    transaction_reference { SpinningWheel.create('transaction_reference') }
  end
end
