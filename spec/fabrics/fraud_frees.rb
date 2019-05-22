SpinningWheel.define do
  fabric name: 'fraud_free', class_name: 'SixSaferpay::FraudFree' do
    id { 1 }
    liability_shift { 'shift' }
    score { 1 }
  end
end
