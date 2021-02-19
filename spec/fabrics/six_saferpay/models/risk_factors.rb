SpinningWheel.define do
  fabric name: 'risk_factors', class_name: 'SixSaferpay::RiskFactors' do
    delivery_type { 'EMAIL' }
    payer_profile { SpinningWheel.create('payer_profile') }
    is_b2b { true }
  end
end
