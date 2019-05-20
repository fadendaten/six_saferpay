require 'spec_helper'

RSpec.describe SixSaferpay::ReturnUrls do

  subject { described_class.new }

  let(:success) { 'http://localhost:3004' }
  let(:fail) { 'http://localhost:3004' }

  let(:hash) {
    {
      'success': success,
      'fail': fail
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the return urls' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
