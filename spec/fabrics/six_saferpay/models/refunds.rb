SpinningWheel.define do
  fabric name: 'refund', class_name: 'SixSaferpay::Refund' do
    amount { SpinningWheel.create('amount') }
    order_id { 'c52ad18472354511ab2c33b59e796901' }
    description { 'Description' }
  end
end
