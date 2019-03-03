module SixSaferpay
  module API
    module Transaction
      class Authorization

        attr_accessor :request_header, :token, :verification_code

        def initialize(token, code)
          @request_header = SixSaferpay::RequestHeader.new
          @token = SixSaferpay::Token.new(token)
          @verification_code = SixSaferpay::VerificationCode.new(code)
        end

        def to_hash
          hash = Hash.new
          hash.merge!(@request_header.to_h)
          hash.merge!(@token.to_h)
          hash.merge!(@verification_code.to_h)
          hash
        end
        alias_method :to_h, :to_hash

        def to_json
          to_hash.to_json
        end

        def url
          '/Payment/v1/Transaction/Authorize'
        end
      end
    end
  end
end
