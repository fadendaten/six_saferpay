module SixSaferpay
  module SixTransaction
    class QueryPaymentMeans

      attr_accessor :request_header, :token, :return_urls



      def initialize(request_header: nil,
                     token: ,
                     return_urls: nil)
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @token = token
        @return_urls = SixSaferpay::ReturnUrls.new(return_urls.to_h) if return_urls
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(token: @token) if @token
        hash.merge!(return_urls: @return_urls.to_h) if @return_urls
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/QueryPaymentMeans'
      end

      def response_class
        SixSaferpay::SixTransaction::QueryPaymentMeansResponse
      end
    end
  end
end
