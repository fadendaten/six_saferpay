require 'spec_helper'

RSpec.describe SixSaferpay::RegistrationResult do

  let(:registration_result) { SpinningWheel.create('registration_result') }

  let(:hash) {
    {
      success: registration_result.success,
      fd_alias: registration_result.fd_alias.to_h,
      error: registration_result.error.to_h
    }
  }

  subject { registration_result }

  describe 'to_hash' do
    it 'returns the hash representation of the registration result' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
