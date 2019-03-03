module SixSaferpay
  module API
    module PaymentPages
      class InitializeResponse

        def initialize(hash)
          @response_header = SixSaferpay::ResponseHeader.new(hash[:ResponseHeader])
          @token = SixSaferpay::Token.new(token: hash[:Token])
          @expiration = SixSaferpay::Expiration.new(expiration: hash[:Expiration])
          @redirect_url = SixSaferpay::RedirectUrl.new(redirect_url: hash[:RedirectUrl])
        end

        def to_hash
          hash = Hash.new
          hash.merge!(@request_header.to_h)
          hash.merge!(@token.to_h)
          hash.merge!(@expiration.to_h)
          hash.merge!(@redirect_url.to_h)
          hash
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
end
