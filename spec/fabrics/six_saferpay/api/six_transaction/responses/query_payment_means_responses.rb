SpinningWheel.define do
  fabric name: 'six_transaction_query_payment_means_response', class_name: 'SixSaferpay::SixTransaction::QueryPaymentMeansResponse' do
    response_header { SpinningWheel.create('response_header') }
    payment_means { SpinningWheel.create('response_payment_means') }
    payer { SpinningWheel.create('payer') }
    redirect_required { false }
    redirect_url { 'http://example.org' }
  end
end
