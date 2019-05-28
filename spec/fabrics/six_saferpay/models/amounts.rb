SpinningWheel.define do
  fabric name: 'amount', class_name: 'SixSaferpay::Amount' do
    value { '100' }
    currency_code { 'CHF' }
  end

  fabric name: 'fee', class_name: 'SixSaferpay::Fee' do
    value { '100' }
    currency_code { 'CHF' }
  end

  fabric name: 'fee_refund', class_name: 'SixSaferpay::FeeRefund' do
    value { '100' }
    currency_code { 'CHF' }
  end
end
