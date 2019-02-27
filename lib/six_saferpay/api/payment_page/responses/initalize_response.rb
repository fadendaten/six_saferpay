module SixSaferpay
  module PaymentPage
    class InitializeResponse

      def initialize(hash)
        @response_header = SixSaferpay::ResponseHeader.new(hash[:ResponseHeader])
        @token = SixSaferpay::Token.new(hash[:Token])
        @expiration = SixSaferpay::Expiration.new(hash[:Expiration])
        @redirect_url = SixSaferpay::RedirectUrl.new(hash[:RedirectUrl])
      end

      def to_hash
        #TODO
      end
      alias_method :to_h, :to_hash

      def token
        @token.token
      end

      def expiration
        @expiration.expiration
      end

      def redirect_url
        @redirect_url.redirect_url
      end
    end
  end
end
