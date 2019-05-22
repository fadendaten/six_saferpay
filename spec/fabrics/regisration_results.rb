SpinningWheel.define do
  fabric name: 'registration_result', class_name: 'SixSaferpay::RegistrationResult' do
    success { false }
    fd_alias { SpinningWheel.create('registration_alias') }
    error { SpinningWheel.create('registration_error') }
  end
end
