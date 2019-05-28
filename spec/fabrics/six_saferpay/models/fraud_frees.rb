SpinningWheel.define do
  fabric name: 'fraud_free', class_name: 'SixSaferpay::FraudFree' do
    id { 'deab90a0458bdc9d9946f5ed1b36f6e8' }
    liability_shift { false }
    score { 0.6 }
    investigation_points { [ "susp_bill_ad", "susp_machine" ] }
    error_message { 'ErrorMessage' }
  end
end
