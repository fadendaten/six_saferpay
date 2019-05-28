SpinningWheel.define do
  fabric name: 'six_omni_channel_insert_alias', class_name: 'SixSaferpay::SixOmniChannel::InsertAlias' do
    request_header { SpinningWheel.create('request_header') }
    register_alias { SpinningWheel.create('register_alias') }
    six_transaction_reference { '1:100002:199970683910' }
  end
end
