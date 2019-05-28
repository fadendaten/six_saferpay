SpinningWheel.define do
  fabric name: 'address_form', class_name: 'SixSaferpay::AddressForm' do
    display { true }
    mandatory_fields { ["FIRSTNAME", "LASTNAME", "PHONE"] }
  end
end

