require 'spec_helper'

RSpec.describe SixSaferpay::ReturnUrls do

  subject { described_class.new }

  let(:success_url) { 'http://localhost:3004' }
  let(:fail_url) { 'http://localhost:3004' }

  let(:hash) {
    {
      'ReturnUrls': {
        'Success': success_url,
        'Fail': fail_url
      }
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the return urls' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
