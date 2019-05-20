module SixSaferpay
  module SixPaymentPage
    class AssertResponse

      attr_accessor(:response_header,
                    :transaction,
                    :payment_means,
                    :payer,
                    :registration_result,
                    :liability,
                    :dcc
                   )

      def initialize(response_header:,
                    transaction:,
                    payment_means:,
                    payer: nil,
                    registration_result: nil,
                    liability: nil,
                    dcc: nil
                    )
        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h)
        @transaction = SixSaferpay::Transaction.new(transaction.to_h)
        @payment_means = SixSaferpay::PaymentMeans.new(payment_means.to_h)
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @registration_result = SixSaferpay::RegistrationResult.new(registration_result.to_h) if registration_result
        @liability = SixSaferpay::Liability.new(liability.to_h) if liability
        @dcc = SixSaferpay::Dcc.new(dcc.to_h) if dcc
      end

      def to_hash
        hash = Hash.new
        hash.merge!(ResponseHeader: @response_header.to_h) if @response_header
        hash.merge!(Transaction: @transaction.to_h) if @transaction
        hash.merge!(PaymentMeans: @payment_means.to_h) if @payment_means
        hash.merge!(Payer: @payer.to_h) if @payer
        hash.merge!(RegistrationResult: @registration_result.to_h) if @registration_result
        hash.merge!(Liability: @liability.to_h) if @liability
        hash.merge!(Dcc: @dcc.to_h) if @dcc
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
