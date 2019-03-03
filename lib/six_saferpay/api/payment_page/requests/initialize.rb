module SixSaferpay
  module API
    module PaymentPage
      class Initialize

        attr_accessor :request_header, :terminal_id, :payment, :return_urls

        def initialize(value: value,
                       currency: currency,
                       order_id: order_id,
                       description: description)
          @request_header = SixSaferpay::RequestHeader.new()
          @terminal_id = SixSaferpay::Terminal.new()
          @payment = SixSaferpay::Payment.new(value: value,
                                              currency: currency,
                                              order_id: order_id,
                                              description: description
                                             )
          @return_urls = SixSaferpay::ReturnUrls.new
        end

        def to_hash
          hash = Hash.new
          hash.merge!(@request_header.to_h)
          hash.merge!(@terminal_id.to_h)
          hash.merge!(@payment.to_h)
          hash.merge!(@return_urls.to_h)
          hash
        end
        alias_method :to_h, :to_hash

        def to_json
          to_hash.to_json
        end

        def url
          '/Payment/v1/PaymentPage/Initialize'
        end

        def response_class
          SixSaferpay::PaymentPage::InitializeResponse
        end

      end
    end
  end
end
