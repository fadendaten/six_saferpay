module SixSaferpay
  module SixPaymentPage
    class InitializeResponse

      attr_accessor(:response_header,
                    :token,
                    :expiration,
                    :redirect_url
                   )

      def initialize(response_header:,
                    token:,
                    expiration:,
                    redirect_url: )
        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
        @token = token
        @expiration = expiration
        @redirect_url = redirect_url
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(token: @token) if @token
        hash.merge!(expiration: @expiration) if @expiration
        hash.merge!(redirect_url: @redirect_url) if @redirect_url
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
