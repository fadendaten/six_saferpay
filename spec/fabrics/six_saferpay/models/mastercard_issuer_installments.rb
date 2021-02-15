SpinningWheel.define do
  fabric name: 'mastercard_issuer_installments', class_name: 'SixSaferpay::MastercardIssuerInstallments' do
    installment_plans { SpinningWheel.create('installment_plans') }
    custom_plan { SpinningWheel.create('custom_plan') }
    chosen_plan { SpinningWheel.create('chosen_plan') }
    receipt_free_text { 'Receipt Free Text' }
  end
end
