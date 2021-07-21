module SixSaferpay
  class ChosenPlan

    attr_accessor(
      :minimum_number_of_installments,
      :maximum_number_of_installments,
      :interest_rate,
      :installment_fee,
      :annual_percentage_rate,
      :total_amount_due,
    )

    def initialize(
      minimum_number_of_installments: ,
      maximum_number_of_installments: ,
      interest_rate: nil,
      installment_fee: nil,
      annual_percentage_rate: nil,
      total_amount_due: nil
    )
      @minimum_number_of_installments =
        minimum_number_of_installments
      @maximum_number_of_installments =
        maximum_number_of_installments
      @interest_rate = interest_rate
      if installment_fee
        @installment_fee = SixSaferpay::InstallmentFee
          .new(**installment_fee.to_h)
      end
      if annual_percentage_rate
        @annual_percentage_rate = annual_percentage_rate
      end
      if total_amount_due
        @total_amount_due = SixSaferpay::TotalAmountDue
          .new(**total_amount_due.to_h)
      end
    end

    def to_hash
      hash = Hash.new
      hash.merge!(minimum_number_of_installments:
                  @minimum_number_of_installments)
      hash.merge!(maximum_number_of_installments:
                  @maximum_number_of_installments)
      if @interest_rate
        hash.merge!(interest_rate: @interest_rate)
      end
      if @installment_fee
        hash.merge!(installment_fee: @installment_fee.to_h)
      end
      if @annual_percentage_rate
        hash.merge!(annual_percentage_rate: @annual_percentage_rate)
      end
      if @total_amount_due
        hash.merge!(total_amount_due: @total_amount_due.to_h)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
