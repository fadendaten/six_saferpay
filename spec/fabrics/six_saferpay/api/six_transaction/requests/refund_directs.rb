SpinningWheel.define do
  fabric name: 'six_transaction_refund_direct', class_name: 'SixSaferpay::SixTransaction::RefundDirect' do
    request_header { SpinningWheel.create('request_header') }
    terminal_id { '12341234' }
    refund { SpinningWheel.create('refund') }
    payment_means { SpinningWheel.create('request_payment_means') }
  end
end
