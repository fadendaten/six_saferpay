module SixSaferpay
  module API
    module Transactions
      class Initialize

        def initialize(value, currency, order_id, description, language)
          @request_header = SixSaferpay::RequestHeader.new
          @terminal_id = SixSaferpay::Terminal.new
          @payment = SixSaferpay::Payment
            .new(value, currency, order_id, description)
          @payer = SixSaferpay::Payer.new(language)
          @return_urls = SixSaferpay::ReturnUrls.new
          @styling = SixSaferpay::Styling.new
        end

        def to_hash
          hash = Hash.new
          hash.merge!(@request_header.to_h)
          hash.merge!(@terminal_id.to_h)
          hash.merge!(@payment.to_h)
          hash.merge!(@payer.to_h)
          hash.merge!(@styling.to_h)
          hash.merge!(@return_urls.to_h)
          hash
        end
        alias_method :to_h, :to_hash

        def to_json
          to_hash.to_json
        end

        def url
          '/Payment/v1/Transaction/Initialize'
        end
      end
    end
  end
end
