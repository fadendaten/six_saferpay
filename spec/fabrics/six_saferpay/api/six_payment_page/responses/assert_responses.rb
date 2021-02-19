SpinningWheel.define do
  fabric name: 'six_payment_page_assert_response', class_name: 'SixSaferpay::SixPaymentPage::AssertResponse' do
    response_header { SpinningWheel.create('response_header') }
    transaction { SpinningWheel.create('transaction') }
    payment_means { SpinningWheel.create('response_payment_means') }
    payer { SpinningWheel.create('payer') }
    registration_result { SpinningWheel.create('registration_result') }
    liability { SpinningWheel.create('liability') }
    dcc { SpinningWheel.create('dcc') }
    mastercard_issuer_installments { SpinningWheel.create('mastercard_issuer_installments') }
    fraud_prevention { SpinningWheel.create('fraud_prevention') }
  end
end
