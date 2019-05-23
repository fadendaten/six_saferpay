SpinningWheel.define do
  fabric name: 'payment', class_name: 'SixSaferpay::Payment' do
    amount { SpinningWheel.create('amount') }
    order_id { 'c52ad18472354511ab2c33b59e796901' }
    description { 'Description' }
    payer_note { 'Payernote' }
    mandate_id { 'MandateId' }
    options { SpinningWheel.create('options') }
    recurring { SpinningWheel.create('recurring') }
    installment { SpinningWheel.create('installment') }
  end
end
