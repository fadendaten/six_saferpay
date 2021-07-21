module SixSaferpay
  module SixOmniChannel
    class AcquireTransactionResponse

      attr_accessor(:response_header,
                    :transaction,
                    :payment_means
                   )

      def initialize(response_header:,
                     transaction:,
                     payment_means:
                    )
        @response_header = SixSaferpay::ResponseHeader.new(**response_header.to_h) if response_header
        @transaction = SixSaferpay::Transaction.new(**transaction.to_h) if transaction
        @payment_means = SixSaferpay::ResponsePaymentMeans.new(**payment_means.to_h) if payment_means
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(transaction: @transaction.to_h) if @transaction
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
