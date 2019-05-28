SpinningWheel.define do
  fabric name: 'six_transaction_adjust_amount_response', class_name: 'SixSaferpay::SixTransaction::AdjustAmountResponse' do
    response_header { SpinningWheel.create('response_header') }
  end
end
