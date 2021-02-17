module SixSaferpay
  module SixTransaction
    class Capture

      attr_accessor(:request_header,
                    :transaction_reference,
                    :amount,
                    :billpay,
                    :pending_notification,
                    :marketplace,
                    :mastercard_issuer_installments
                   )


      def initialize(request_header: nil,
                     transaction_reference:,
                     amount: nil,
                     billpay: nil,
                     pending_notification: nil,
                     marketplace: nil,
                    mastercard_issuer_installments: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @transaction_reference = SixSaferpay::TransactionReference.new(transaction_reference.to_h) if transaction_reference
        @amount = SixSaferpay::Amount.new(amount.to_h) if amount
        @billpay = SixSaferpay::Billpay.new(billpay.to_h) if billpay
        @pending_notification = SixSaferpay::PendingNotification.new(pending_notification.to_h) if pending_notification
        @marketplace = SixSaferpay::Marketplace.new(marketplace.to_h) if marketplace
        if mastercard_issuer_installments
          @mastercard_issuer_installments = SixSaferpay::MastercardIssuerInstallments
            .new(mastercard_issuer_installments.to_h)
        end
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(transaction_reference: @transaction_reference.to_h) if @transaction_reference
        hash.merge!(amount: @amount.to_h) if @amount
        hash.merge!(billpay: @billpay.to_h) if @billpay
        hash.merge!(pending_notification: @pending_notification.to_h) if @pending_notification
        hash.merge!(marketplace: @marketplace.to_h) if @marketplace
        if @mastercard_issuer_installments
          hash.merge!(mastercard_issuer_installments: mastercard_issuer_installments.to_h)
        end
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/Capture'
      end

      def response_class
        SixSaferpay::SixTransaction::CaptureResponse
      end

    end
  end
end
