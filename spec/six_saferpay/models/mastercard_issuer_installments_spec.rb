require 'spec_helper'

RSpec.describe SixSaferpay::MastercardIssuerInstallments do

  subject { SpinningWheel.create('mastercard_issuer_installments') }

  let(:hash) {
    {
      installment_plans: subject.installment_plans.to_h,
      custom_plan: subject.custom_plan.to_h,
      chosen_plan: subject.chosen_plan.to_h,
      receipt_free_text: subject.receipt_free_text
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the mastercard issuer installments' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
