module SixSaferpay
  module PaymentPage
    class AssertResponse

      def initialize(hash)
        # @response_header = SixSaferpay::ResponseHeader.new(hash[:ResponseHeader])
        # @token = SixSaferpay::Token.new(hash[:Token])
        # @expiration = SixSaferpay::Expiration.new(hash[:Expiration])
        # @redirect_url = SixSaferpay::RedirectUrl.new(hash[:RedirectUrl])
      end

      def to_hash
        hash = Hash.new
        # hash.merge!(@request_header.to_h)
        # hash.merge!(@token.to_h)
        # hash.merge!(@expiration.to_h)
        # hash.merge!(@redirect_url.to_h)
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
