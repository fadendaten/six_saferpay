module SixSaferpay
  module SixTransaction
    class InitializeResponse

      attr_accessor(:response_header,
                    :token,
                    :expiration,
                    :liability_shift,
                    :redirect_required,
                    :redirect
                   )

      def initialize(response_header:,
                     token:,
                     expiration:,
                     liability_shift: nil,
                     redirect_required:,
                     redirect: )
        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
        @token = token
        @expiration = expiration
        @liability_shift = liability_shift
        @redirect_required = redirect_required
        @redirect = SixSaferpay::Redirect.new(redirect.to_h) if redirect
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(token: @token) if @token
        hash.merge!(expiration: @expiration) if @expiration
        hash.merge!(liability_shift: @liability_shift) if !@liability_shift.nil?
        hash.merge!(redirect_required: @redirect_required) if !@redirect_required.nil?
        hash.merge!(redirect: @redirect.to_h) if @redirect
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
