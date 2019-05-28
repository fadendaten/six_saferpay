SpinningWheel.define do
  fabric name: 'six_payment_page_initialize_response', class_name: 'SixSaferpay::SixPaymentPage::InitializeResponse' do
    response_header { SpinningWheel.create('response_header') }
    token { '234uhfh78234hlasdfh8234e1234' }
    expiration { '2011-07-14T19:43:37+01:00' }
    redirect_url { 'https://www.saferpay.com/vt2/api/PaymentPage/1234/12341234/z2p7a0plpgsd41m97wjvm5jza' }
  end
end
