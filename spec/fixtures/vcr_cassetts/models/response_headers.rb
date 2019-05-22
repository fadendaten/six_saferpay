FDFactory.define do
  factory :response_header, class: SixSaferpay::ResponseHeader do
    request_id { 1 }
    spec_version { '1.11'}
  end
end
