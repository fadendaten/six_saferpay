SpinningWheel.define do
  fabric name: 'options', class_name: 'SixSaferpay::Options' do
    pre_auth { false }
  end
end
