SpinningWheel.define do
  fabric name: 'bank_account', class_name: 'SixSaferpay::BankAccount' do
    iban { 'DE12500105170648489890' }
    holder_name { 'John Doe' }
    bic { 'INGDDEFFXXX' }
    bank_name { 'Bankname' }
    country_code { 'DE' }
  end
end

SpinningWheel.define do
  fabric name: 'payee', class_name: 'SixSaferpay::BankAccount' do
    iban { 'DE12500105170648489890' }
    holder_name { 'John Doe' }
    bic { 'INGDDEFFXXX' }
    bank_name { 'Bankname' }
    country_code { 'DE' }
  end
end
