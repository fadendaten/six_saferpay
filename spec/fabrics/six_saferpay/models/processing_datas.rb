SpinningWheel.define do
  fabric name: 'processing_data', class_name: 'SixSaferpay::ProcessingData' do
    bancontact { SpinningWheel.create('bancontact') }
  end
end
