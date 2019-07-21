module SixSaferpay
  module SixTransaction
    class QueryAlternativePayment

      attr_accessor :request_header, :token



      def initialize(request_header: nil, token: )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @token = token
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(token: @token) if @token
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/QueryAlternativePayment'
      end

      def response_class
        SixSaferpay::SixTransaction::QueryAlternativePaymentResponse
      end
    end
  end
end
