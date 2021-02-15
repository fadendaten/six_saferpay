require 'spec_helper'

RSpec.describe SixSaferpay::InstallmentPlans do

  subject { SpinningWheel.create('installment_plans') }

  let(:hash) {
    {
      number_of_installments: subject.number_of_installments,
      interest_rate: subject.interest_rate,
      installment_fee: subject.installment_fee.to_h,
      annual_percentage_rate: subject.annual_percentage_rate,
      first_installment_amount: subject.first_installment_amount.to_h,
      subsequent_installment_amount: subject.subsequent_installment_amount.to_h,
      total_amount_due: subject.total_amount_due.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the installment plans' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end

