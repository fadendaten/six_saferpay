SpinningWheel.define do
  fabric name: 'direct_debit', class_name: 'SixSaferpay::DirectDebit' do
    mandate_id { 'Mandateid' }
    creditor_id { 'Creditorid' }
  end
end
