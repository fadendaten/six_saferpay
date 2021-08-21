SpinningWheel.define do
  fabric name: 'order', class_name: 'SixSaferpay::Order' do
    items { [SpinningWheel.create('item')] }
  end
end
