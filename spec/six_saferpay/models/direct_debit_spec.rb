require 'spec_helper'

RSpec.describe SixSaferpay::DirectDebit do

  subject { SpinningWheel.create('direct_debit') }

  let(:hash) {
    {
      mandate_id: subject.mandate_id,
      creditor_id: subject.creditor_id
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the direct debit' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
