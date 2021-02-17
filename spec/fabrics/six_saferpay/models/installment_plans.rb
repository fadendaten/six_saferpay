SpinningWheel.define do
  fabric name: 'installment_plans', class_name: 'SixSaferpay::InstallmentPlans' do
    number_of_installments { 2 }
    interest_rate { 125 }
    installment_fee { SpinningWheel.create('installment_fee') }
    annual_percentage_rate { 125 }
    first_installment_amount { SpinningWheel.create('first_installment_amount') }
    subsequent_installment_amount { SpinningWheel.create('subsequent_installment_amount') }
    total_amount_due { SpinningWheel.create('total_amount_due') }
  end
end
