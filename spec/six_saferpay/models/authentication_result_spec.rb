require 'spec_helper'

RSpec.describe SixSaferpay::AuthenticationResult do

  subject { SpinningWheel.create('authentication_result') }

  let(:hash) {
    {
      result: subject.result,
      message: subject.message,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the authentication result' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
