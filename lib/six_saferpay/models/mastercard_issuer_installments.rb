module SixSaferpay
  class MastercardIssuerInstallments

    attr_accessor(
      :installment_plans,
      :custom_plan,
      :chosen_plan,
      :receipt_free_text
    )

    def initialize(
        installment_plans: nil,
        custom_plan: nil,
        chosen_plan: nil,
        receipt_free_text: nil
      )
      if installment_plans
        @installment_plans = SixSaferpay::InstallmentPlans
          .new(installment_plans.to_h)
      end
      if custom_plan
        @custom_plan = SixSaferpay::CustomPlan
          .new(custom_plan)
      end
      if chosen_plan
        @chosen_plan = SixSaferpay::ChosenPlan
          .new(chosen_plan.to_h)
      end
      @receipt_free_text = receipt_free_text
    end

    def to_hash
      hash = Hash.new
      if @installment_plans
        hash.merge!(installment_plans: @installment_plans.to_h)
      end
      if @custom_plan
        hash.merge!(custom_plan: @custom_plan.to_h)
      end
      if @chosen_plan
        hash.merge!(chosen_plan: @chosen_plan.to_h)
      end
      hash.merge!(receipt_free_text: @receipt_free_text)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
