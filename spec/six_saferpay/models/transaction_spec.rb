require 'spec_helper'

RSpec.describe SixSaferpay::Transaction do

  let(:type) { 'PAYMENT' }
  let(:status) { 'AUTHORIZED' }
  let(:id) { 'jdEhOxbE7dK1tAnQ0h7OArGOGEQb' }
  let(:date) { '2019-03-03T12:46:53.417+01:00' }
  let(:value) { '100' }
  let(:currency_code) { 'CHF' }
  let(:amount) { SixSaferpay::Amount
    .new(value: value, currency_code: currency_code)
  }
  let(:order_id) { 'R123456789' }
  let(:acquirer_name) { 'VISA Saferpay Test' }
  let(:acquirer_reference) { '99186411964' }
  let(:six_transaction_reference) { '0:0:3:jdEhOxbE7dK1tAnQ0h7OArGOGEQb' }
  let(:approval_code) { '639830' }

  let(:hash) {
    {
      type: type,
      status: status,
      id: id,
      date: date,
      amount: amount.to_h,
      order_id: order_id,
      acquirer_name: acquirer_name,
      acquirer_reference: acquirer_reference,
      six_transaction_reference: six_transaction_reference,
      approval_code: approval_code
    }
  }

  subject {
    described_class.new(type: type,
                        status: status,
                        id: id,
                        date: date,
                        amount: amount.to_h,
                        order_id: order_id,
                        acquirer_name: acquirer_name,
                        acquirer_reference: acquirer_reference,
                        six_transaction_reference: six_transaction_reference,
                        approval_code: approval_code)
  }

  describe 'to_hash' do
    it 'returns the hash representation of the transtion' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
