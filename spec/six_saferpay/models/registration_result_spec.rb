require 'spec_helper'

RSpec.describe SixSaferpay::RegistrationResult do

  subject { SpinningWheel.create('registration_result') }

  let(:hash) {
    {
      success: subject.success,
      fd_alias: subject.fd_alias.to_h,
      error: subject.error.to_h,
      authentication_result: subject.authentication_result.to_h
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the registration result' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
