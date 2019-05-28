SpinningWheel.define do
  fabric name: 'marketplace', class_name: 'SixSaferpay::Marketplace' do
    submerchant_id { 1 }
    fee { SpinningWheel.create('fee') }
    fee_refund { SpinningWheel.create('fee_refund') }
  end
end
