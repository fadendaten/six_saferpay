SpinningWheel.define do
  fabric name: 'dcc', class_name: 'SixSaferpay::Dcc' do
    payer_amount { SpinningWheel.create('amount') }
  end
end
