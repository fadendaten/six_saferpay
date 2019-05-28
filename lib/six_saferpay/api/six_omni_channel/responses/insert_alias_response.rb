module SixSaferpay
  module SixOmniChannel
    class InsertAliasResponse

      attr_accessor(:response_header,
                    :fd_alias,
                    :payment_means,
                    :check_result
                   )

      def initialize(response_header:,
                     fd_alias:,
                     payment_means:,
                     check_result: nil
                    )
        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
        @fd_alias = SixSaferpay::Alias.new(fd_alias.to_h) if fd_alias
        @payment_means = SixSaferpay::ResponsePaymentMeans.new(payment_means.to_h) if payment_means
        @check_result = SixSaferpay::CheckResult.new(check_result.to_h) if check_result
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(fd_alias: @fd_alias.to_h) if @fd_alias
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash.merge!(check_result: @check_result.to_h) if @check_result
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
