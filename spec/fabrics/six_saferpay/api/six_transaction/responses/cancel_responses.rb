SpinningWheel.define do
  fabric name: 'six_transaction_cancel_response', class_name: 'SixSaferpay::SixTransaction::CancelResponse' do
    response_header { SpinningWheel.create('response_header') }
    transaction_id { 'qiuwerhfi23h4189asdhflk23489' }
    order_id { 'c52ad18472354511ab2c33b59e796901' }
    date { '2014-04-25T08:33:44.159+01:00' }
  end
end
