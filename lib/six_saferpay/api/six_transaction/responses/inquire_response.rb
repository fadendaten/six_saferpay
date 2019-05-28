module SixSaferpay
  module SixTransaction
    class InquireResponse

      attr_accessor(:response_header,
                    :transaction,
                    :payment_means,
                    :payer,
                    :liability,
                    :dcc
                   )


      def initialize(response_header:,
                     transaction:,
                     payment_means:,
                     payer: nil,
                     liability: nil,
                     dcc: nil

                    )
        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
        @transaction = SixSaferpay::Transaction.new(transaction.to_h) if transaction
        @payment_means = SixSaferpay::ResponsePaymentMeans.new(payment_means.to_h) if payment_means
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @liability = SixSaferpay::Liability.new(liability.to_h) if liability
        @dcc = SixSaferpay::Dcc.new(dcc.to_h) if dcc
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(transaction: @transaction.to_h) if @transaction
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash.merge!(payer: @payer.to_h) if @payer
        hash.merge!(liability: @liability.to_h) if @liability
        hash.merge!(dcc: @dcc.to_h) if @dcc
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
