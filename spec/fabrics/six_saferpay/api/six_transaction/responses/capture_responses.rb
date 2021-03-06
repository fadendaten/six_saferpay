SpinningWheel.define do
  fabric name: 'six_transaction_capture_response', class_name: 'SixSaferpay::SixTransaction::CaptureResponse' do
    response_header { SpinningWheel.create('response_header') }
    capture_id { 'ECthWpbv1SI6SAIdU2p6AIC1bppA_c' }
    status { 'CAPTURED' }
    date { '2014-04-25T08:33:44.159+01:00' }
    invoice { SpinningWheel.create('invoice') }
  end
end
