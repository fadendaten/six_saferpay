require 'spec_helper'

RSpec.describe SixSaferpay::ResponseHeader do

 subject { SpinningWheel.create('response_header') }

  let(:hash) {
    {
      request_id: subject.request_id,
      spec_version: subject.spec_version
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the response header' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
