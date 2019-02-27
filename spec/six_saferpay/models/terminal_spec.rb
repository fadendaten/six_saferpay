require 'spec_helper'

RSpec.describe SixSaferpay::Terminal do

  subject { described_class.new }

  let(:terminal_id) { '17925560' }

  let(:hash) {
    {
      'TerminalId': terminal_id
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the terminal' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
