SpinningWheel.define do
  fabric name: 'registration_alias', class_name: 'SixSaferpay::Alias' do
    id { 1 }
    lifetime { 1000 }
  end
end
