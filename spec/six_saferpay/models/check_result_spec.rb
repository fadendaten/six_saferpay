require 'spec_helper'

RSpec.describe SixSaferpay::CheckResult do

  subject { SpinningWheel.create('check_result') }

  let(:hash) {
    {
      result: subject.result,
      message: subject.message
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the check result' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
