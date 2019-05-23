SpinningWheel.define do
  fabric name: 'transaction', class_name: 'SixSaferpay::Transaction' do
    type { 'PAYMENT' }
    status { 'AUTHORIZED' }
    id { 'K5OYS9Ad6Ex4rASU1IM1b3CEU8bb' }
    capture_id { 'ECthWpbv1SI6SAIdU2p6AIC1bppA' }
    date { '2011-09-23T14:57:23.023+02.00' }
    amount { SpinningWheel.create('amount') }
    order_id { 'c52ad18472354511ab2c33b59e796901' }
    acquirer_name { 'AcquirerName' }
    acquirer_reference { 'AcquirerReference' }
    six_transaction_reference { '0:0:3:K5OYS9Ad6Ex4rASU1IM1b3CEU8bb' }
    approval_code { 'AcquirerReference' }
    direct_debit { SpinningWheel.create('direct_debit') }
    invoice { SpinningWheel.create('invoice') }
  end
end
