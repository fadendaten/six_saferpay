module SixSaferpay
  module SixTransaction
    class AuthorizeDirectResponse

      attr_accessor(:response_header,
                    :transaction,
                    :payment_means,
                    :payer,
                    :registration_result
                   )


      def initialize(response_header:,
                     transaction:,
                     payment_means:,
                     payer: nil,
                     registration_result: nil
                    )
        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
        @transaction = SixSaferpay::Transaction.new(transaction.to_h) if transaction
        @payment_means = SixSaferpay::ResponsePaymentMeans.new(payment_means.to_h) if payment_means
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @registration_result = SixSaferpay::RegistrationResult.new(registration_result.to_h) if registration_result
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(transaction: @transaction.to_h) if @transaction
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash.merge!(payer: @payer.to_h) if @payer
        hash.merge!(registration_result: @registration_result.to_h) if @registration_result
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
