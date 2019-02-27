require 'spec_helper'

RSpec.describe SixSaferpay::TransactionReference do

  let(:transaction_id) { '723n4MAjMdhjSAhAKEUdA8jtl9jb' }

  subject { described_class.new(transaction_id) }

  let(:hash) {
    {
      'TransactionReference': {
        'TransactionId': transaction_id
      }
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the transaction reference' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
