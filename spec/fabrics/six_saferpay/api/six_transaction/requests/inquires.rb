SpinningWheel.define do
  fabric name: 'six_transaction_inquire', class_name: 'SixSaferpay::SixTransaction::Inquire' do
    request_header { SpinningWheel.create('request_header') }
    transaction_reference { SpinningWheel.create('transaction_reference') }
  end
end
