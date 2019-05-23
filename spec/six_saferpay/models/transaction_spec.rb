require 'spec_helper'

RSpec.describe SixSaferpay::Transaction do

  subject { SpinningWheel.create('transaction') }

  let(:hash) {
    {
      type: subject.type,
      status: subject.status,
      id: subject.id,
      capture_id: subject.capture_id,
      date: subject.date,
      amount: subject.amount.to_h,
      order_id: subject.order_id,
      acquirer_name: subject.acquirer_name,
      acquirer_reference: subject.acquirer_reference,
      six_transaction_reference: subject.six_transaction_reference,
      approval_code: subject.approval_code,
      direct_debit: subject.direct_debit.to_h,
      invoice: subject.invoice.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the transtion' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
