require 'spec_helper'

RSpec.describe SixSaferpay::Payer do

  let(:language_code) { 'en' }

  subject { described_class.new(language_code: language_code) }

  let(:hash) {
    {
      language_code: language_code
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the payer' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
