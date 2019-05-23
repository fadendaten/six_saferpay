require 'spec_helper'

RSpec.describe SixSaferpay::ReturnUrls do

  subject { SpinningWheel.create('return_urls') }

  let(:hash) {
    {
      success: subject.success,
      fd_fail: subject.fd_fail,
      fd_abort: subject.fd_abort
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the return urls' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
