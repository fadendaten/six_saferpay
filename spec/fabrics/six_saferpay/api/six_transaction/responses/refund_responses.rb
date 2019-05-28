SpinningWheel.define do
  fabric name: 'six_transaction_refund_response', class_name: 'SixSaferpay::SixTransaction::RefundResponse' do
    response_header { SpinningWheel.create('response_header') }
    transaction { SpinningWheel.create('transaction') }
    payment_means { SpinningWheel.create('response_payment_means') }
    dcc { SpinningWheel.create('dcc') }
  end
end
