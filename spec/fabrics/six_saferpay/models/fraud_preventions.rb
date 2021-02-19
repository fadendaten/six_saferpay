SpinningWheel.define do
  fabric name: 'fraud_prevention', class_name: 'SixSaferpay::FraudPrevention' do
    result { 'APPROVED' }
  end
end
