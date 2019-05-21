SpinningWheel.define do
  fabric name: 'bank_account', class_name: 'SixSaferpay::BankAccount' do
    iban { 'CH99999' }
    holder_name { 'holder name' }
    bic { '12344' }
    bank_name { 'SIX BANK' }
    country_code { 'CH' }
  end
end
