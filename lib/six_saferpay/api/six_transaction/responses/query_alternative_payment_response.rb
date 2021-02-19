module SixSaferpay
  module SixTransaction
    class QueryAlternativePaymentResponse

      attr_accessor(:response_header,
                    :transaction,
                    :payment_means,
                    :payer,
                    :liability,
                    :fraud_prevention
                   )

      def initialize(response_header: ,
                     transaction: ,
                     payment_means: ,
                     payer: nil,
                     liability: nil,
                     fraud_prevention: nil
                    )


        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
        @transaction = SixSaferpay::Transaction.new(transaction.to_h)
        @payment_means = SixSaferpay::ResponsePaymentMeans.new(payment_means.to_h)
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @liability = SixSaferpay::Liability.new(liability.to_h) if liability
        if fraud_prevention
          @fraud_prevention = SixSaferpay::FraudPrevention.new(fraud_prevention.to_h)
        end
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(transaction: @transaction.to_h) if @transaction
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash.merge!(payer: @payer.to_h) if @payer
        hash.merge!(liability: @liability.to_h) if @liability
        if @fraud_prevention
          hash.merge!(fraud_prevention: fraud_prevention.to_h)
        end
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
