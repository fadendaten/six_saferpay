SpinningWheel.define do
  fabric name: 'liability', class_name: 'SixSaferpay::Liability' do
    liability_shift { false }
    liable_entity { 'LiableEntity' }
    three_ds { SpinningWheel.create('three_ds') }
    fraud_free { SpinningWheel.create('fraud_free') }
  end
end
