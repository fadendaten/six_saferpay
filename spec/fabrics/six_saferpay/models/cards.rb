SpinningWheel.define do
  fabric name: 'response_card', class_name: 'SixSaferpay::ResponseCard' do
    masked_number { '912345xxxxxx1234' }
    exp_year { '2015' }
    exp_month { '9' }
    holder_name { 'John Doe' }
    holder_segment { 'CORPORATE' }
    country_code { 'CH' }
    hash_value { 'Hashvalue' }
  end
end

SpinningWheel.define do
  fabric name: 'request_card', class_name: 'SixSaferpay::RequestCard' do
    number { '1234123412341234' }
    exp_year { 2015 }
    exp_month { 9 }
    holder_name { 'John Doe' }
    verification_code  { '123' }
  end
end
