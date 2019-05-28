SpinningWheel.define do
  fabric name: 'six_transaction_assert_refund_response', class_name: 'SixSaferpay::SixTransaction::AssertRefundResponse' do
    response_header { SpinningWheel.create('response_header') }
    transaction_id { '723n4MAjMdhjSAhAKEUdA8jtl9jb' }
    order_id { 'c52ad18472354511ab2c33b59e796901' }
    status { 'CAPTURED' }
    date { '2014-04-25T08:33:44.159+01:00' }
  end
end
