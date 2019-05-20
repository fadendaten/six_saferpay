module SixSaferpay
  module SixTransaction
    class Capture

      attr_accessor(:request_header,
                    :transaction_reference,
                    :amount,
                    :billpay,
                    :pending_notifiction,
                    :marketplace
                   )


      def initialize(request_header: nil,
                     transaction_reference:,
                     amount: nil,
                     billpay: nil,
                     pending_notifiction: nil,
                     marketplace: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @transaction_reference = SixSaferpay::TransactionReference.new(transaction_reference.to_h) if transaction_reference
        @amount = SixSaferpay::Amount.new(amount.to_h) if amount
        @billpay = SixSaferpay::Billpay.new(billpay.to_h) if billpay
        @pending_notifiction = SixSaferpay::PendingNotification.new(pending_notifiction.to_h) if pending_notifiction
        @marketplace = SixSaferpay::Marketplace.new(marketplace.to_h) if marketplace
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(transaction_reference: @transaction_reference.to_h) if @transaction_reference
        hash.merge!(billpay: @billpay.to_h) if @billpay
        hash.merge!(pending_notifiction: @pending_notifiction.to_h) if @pending_notifiction
        hash.merge!(marketplace: @marketplace.to_h) if @marketplace
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
