SpinningWheel.define do
  fabric name: 'options', class_name: 'SixSaferpay::Options' do
    pre_auth { true }
    allow_partial_authorization { true }
  end
end
