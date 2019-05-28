SpinningWheel.define do
  fabric name: 'six_omni_channel_acquire_transaction_response', class_name: 'SixSaferpay::SixOmniChannel::AcquireTransactionResponse' do
    response_header { SpinningWheel.create('response_header') }
    transaction { SpinningWheel.create('transaction') }
    payment_means { SpinningWheel.create('response_payment_means') }
  end
end
