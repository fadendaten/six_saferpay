module SixSaferpay
  module SixPaymentPage
    class Assert

      attr_accessor(:request_header, :token)

      def initialize(request_header: nil, token:)
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @token = token
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h)
        hash.merge!(token: @token)
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/PaymentPage/Assert'
      end

      def response_class
        SixSaferpay::SixPaymentPage::AssertResponse
      end

    end
  end
end
