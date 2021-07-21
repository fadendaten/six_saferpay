module SixSaferpay
  class InstallmentPlans

    attr_accessor(
      :number_of_installments,
      :interest_rate,
      :installment_fee,
      :annual_percentage_rate,
      :first_installment_amount,
      :subsequent_installment_amount,
      :total_amount_due
    )

    def initialize(
        number_of_installments: ,
        interest_rate: nil,
        installment_fee: nil,
        annual_percentage_rate: nil,
        first_installment_amount: nil,
        subsequent_installment_amount: nil,
        total_amount_due: nil
      )
      @number_of_installments = number_of_installments
      @interest_rate = interest_rate
      if installment_fee
        @installment_fee = SixSaferpay::InstallmentFee
          .new(**installment_fee.to_h)
      end
      if annual_percentage_rate
        @annual_percentage_rate = annual_percentage_rate
      end
      if first_installment_amount
        @first_installment_amount = SixSaferpay::FirstInstallmentAmount
          .new(**first_installment_amount.to_h)
      end
      if subsequent_installment_amount
        @subsequent_installment_amount = SixSaferpay::SubsequentInstallmentAmount
          .new(**subsequent_installment_amount.to_h)
      end
      if total_amount_due
        @total_amount_due = SixSaferpay::TotalAmountDue
          .new(**total_amount_due.to_h)
      end
    end

    def to_hash
      hash = Hash.new
      hash.merge!(number_of_installments: @number_of_installments)
      if @interest_rate
        hash.merge!(interest_rate: @interest_rate)
      end
      if @installment_fee
        hash.merge!(installment_fee: @installment_fee.to_h)
      end
      if @annual_percentage_rate
        hash.merge!(annual_percentage_rate: @annual_percentage_rate)
      end
      if @first_installment_amount
        hash.merge!(first_installment_amount: @first_installment_amount.to_h)
      end
      if @subsequent_installment_amount
        hash.merge!(subsequent_installment_amount: @subsequent_installment_amount.to_h)
      end
      if @total_amount_due
        hash.merge!(total_amount_due: @total_amount_due.to_h)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end

