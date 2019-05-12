module SixSaferpay
  module API
    module PaymentPages
      class InitializeResponse

        attr_accessor(:response_header,
                      :token,
                      :expiration,
                      :redirect_url
                     )

        def initialize(hash)
          response_header = hash.fetch(:ResponseHeader)
          request_id = response_header.fetch(:RequestId)
          spec_version = response_header.fetch(:SpecVersion)

          @response_header = SixSaferpay::ResponseHeader.new(request_id: request_id, spec_version: spec_version)
          @token = hash.fetch(:Token)
          @expiration = hash.fetch(:Expiration)
          @redirect_url = hash.fetch(:RedirectUrl)
        end

        def to_hash
          hash = Hash.new
          hash.merge!(@request_header.to_h)
          hash.merge!(Token: @token)
          hash.merge!(Expiration: @expiration)
          hash.merge(RedirectUrl: @redirect_url)
          hash
        end
        alias_method :to_h, :to_hash

        def token
          @token
        end

        def expiration
          @expiration
        end

        def redirect_url
          @redirect_url
        end
      end
    end
  end
end
