SpinningWheel.define do
  fabric name: 'six_batch_close_response', class_name: 'SixSaferpay::SixBatch::CloseResponse' do
    response_header { SpinningWheel.create('response_header') }
  end
end
