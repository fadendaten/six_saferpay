module SixSaferpay
  module SixSecureData
    class UpdateResponse

      attr_accessor(:response_header,
                    :fd_alias,
                    :payment_means
                   )

      def initialize(response_header:,
                     fd_alias:,
                     payment_means: )
        @response_header = SixSaferpay::ResponseHeader.new(**response_header.to_h) if response_header
        @fd_alias = SixSaferpay::Alias.new(**fd_alias.to_h)
        @payment_means = SixSaferpay::ResponsePaymentMeans.new(**payment_means.to_h)
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(fd_alias: @fd_alias.to_h) if @fd_alias
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
