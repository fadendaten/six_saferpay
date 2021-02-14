SpinningWheel.define do
  fabric name: 'six_transaction_authorize_referenced', class_name: 'SixSaferpay::SixTransaction::AuthorizeReferenced' do
    request_header { SpinningWheel.create('request_header') }
    terminal_id { SixSaferpay.config.terminal_id }
    payment { SpinningWheel.create('payment') }
    transaction_reference { SpinningWheel.create('transaction_reference') }
    authentication { SpinningWheel.create('authentication') }
    suppress_dcc { false }
  end
end
