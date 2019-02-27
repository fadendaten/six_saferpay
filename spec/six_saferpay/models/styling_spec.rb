require 'spec_helper'

RSpec.describe SixSaferpay::Styling do

  subject { described_class.new }

  let(:hash) {
    {
      'Styling': {
        'CssUrl': 'http://localhost:3004/six_payment.css'
      }
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the styling' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
