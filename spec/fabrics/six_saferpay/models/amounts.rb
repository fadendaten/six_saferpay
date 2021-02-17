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

  fabric name: 'installment_fee', class_name: 'SixSaferpay::InstallmentFee' do
    value { '100' }
    currency_code { 'CHF' }
  end

  fabric name: 'first_installment_amount', class_name: 'SixSaferpay::FirstInstallmentAmount' do
    value { '100' }
    currency_code { 'CHF' }
  end

  fabric name: 'subsequent_installment_amount', class_name: 'SixSaferpay::SubsequentInstallmentAmount' do
    value { '100' }
    currency_code { 'CHF' }
  end

  fabric name: 'total_amount_due', class_name: 'SixSaferpay::TotalAmountDue' do
    value { '100' }
    currency_code { 'CHF' }
  end
end
