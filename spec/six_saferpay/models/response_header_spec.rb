require 'spec_helper'

RSpec.describe SixSaferpay::ResponseHeader do

  let(:response_header) { SpinningWheel.create('response_header') }

  let(:hash) {
    {
      request_id: 1,
      spec_version: '1.11'
    }
  }

  subject { response_header }

  describe 'to_hash' do
    it 'returns the hash representation of the response header' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
