module SixSaferpay
  module SixTransaction
    class AuthorizeDirectResponse

      attr_accessor(:response_header,
                    :transaction,
                    :payment_means,
                    :payer,
                    :registration_result,
                    :mastercard_issuer_installments,
                    :fraud_prevention
                   )


      def initialize(response_header:,
                     transaction:,
                     payment_means:,
                     payer: nil,
                     registration_result: nil,
                     mastercard_issuer_installments: nil,
                     fraud_prevention: nil
                    )
        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
        @transaction = SixSaferpay::Transaction.new(transaction.to_h) if transaction
        @payment_means = SixSaferpay::ResponsePaymentMeans.new(payment_means.to_h) if payment_means
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @registration_result = SixSaferpay::RegistrationResult.new(registration_result.to_h) if registration_result
        if mastercard_issuer_installments
          @mastercard_issuer_installments = SixSaferpay::MastercardIssuerInstallments
            .new(mastercard_issuer_installments.to_h)
        end
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
        hash.merge!(registration_result: @registration_result.to_h) if @registration_result
        if @mastercard_issuer_installments
          hash.merge!(mastercard_issuer_installments: mastercard_issuer_installments.to_h)
        end
        if @fraud_prevention
          hash.merge!(fraud_prevention: fraud_prevention.to_h)
        end
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
