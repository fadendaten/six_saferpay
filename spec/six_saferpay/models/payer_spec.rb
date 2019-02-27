require 'spec_helper'

RSpec.describe SixSaferpay::Payer do

  let(:language) { 'en' }

  subject { described_class.new(language) }

  let(:hash) {
    {
      'Payer': {
        'LanguageCode': language
      }
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the payer' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
