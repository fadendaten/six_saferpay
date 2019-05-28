SpinningWheel.define do
  fabric name: 'six_payment_page_assert', class_name: 'SixSaferpay::SixPaymentPage::Assert' do
    request_header { SpinningWheel.create('request_header') }
    token { '234uhfh78234hlasdfh8234e' }
  end
end
