SpinningWheel.define do
  fabric name: 'chosen_plan', class_name: 'SixSaferpay::ChosenPlan' do
    minimum_number_of_installments { 1 }
    maximum_number_of_installments { 2 }
    interest_rate { 125 }
    installment_fee { SpinningWheel.create('installment_fee') }
    annual_percentage_rate { 125 }
    total_amount_due { SpinningWheel.create('total_amount_due') }
  end

  fabric name: 'custom_plan', class_name: 'SixSaferpay::CustomPlan' do
    minimum_number_of_installments { 1 }
    maximum_number_of_installments { 2 }
    interest_rate { 125 }
    installment_fee { SpinningWheel.create('installment_fee') }
    annual_percentage_rate { 125 }
    total_amount_due { SpinningWheel.create('total_amount_due') }
  end
end
