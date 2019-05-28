SpinningWheel.define do
  fabric name: 'six_batch_close', class_name: 'SixSaferpay::SixBatch::Close' do
    request_header { SpinningWheel.create('request_header') }
    terminal_id { '12341234' }
  end
end
