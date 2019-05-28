SpinningWheel.define do
  fabric name: 'six_omni_channel_insert_alias_response', class_name: 'SixSaferpay::SixOmniChannel::InsertAliasResponse' do
    response_header { SpinningWheel.create('response_header') }
    fd_alias { SpinningWheel.create('alias') }
    payment_means { SpinningWheel.create('response_payment_means') }
    check_result { SpinningWheel.create('check_result') }
  end
end
