require 'spec_helper'

RSpec.describe SixSaferpay::CustomPlan do

  subject { SpinningWheel.create('custom_plan') }

  let(:hash) {
    {
      minimum_number_of_installments: subject.minimum_number_of_installments,
      maximum_number_of_installments: subject.maximum_number_of_installments,
      interest_rate: subject.interest_rate,
      installment_fee: subject.installment_fee.to_h,
      annual_percentage_rate: subject.annual_percentage_rate,
      total_amount_due: subject.total_amount_due.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the custom plan' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
