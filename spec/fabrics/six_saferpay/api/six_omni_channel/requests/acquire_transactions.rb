SpinningWheel.define do
  fabric name: 'six_omni_channel_acquire_transaction', class_name: 'SixSaferpay::SixOmniChannel::AcquireTransaction' do
    request_header { SpinningWheel.create('request_header') }
    terminal_id { '12345678' }
    order_id { 'c52ad18472354511ab2c33b59e796901' }
    six_transaction_reference { '1:100002:199970683910' }
  end
end
