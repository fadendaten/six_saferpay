module SixSaferpay
  module SixTransaction
    class Refund

      attr_accessor(:request_header,
                    :refund,
                    :capture_reference,
                    :pending_notification
                   )


      def initialize(request_header: nil,
                     refund: ,
                     capture_reference: ,
                     pending_notification: nil)
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @refund = SixSaferpay::Refund.new(refund.to_h) if refund
        @capture_reference = SixSaferpay::CaptureReference.new(capture_reference.to_h) if capture_reference
        @pending_notification = SixSaferpay::PendingNotification.new(pending_notification.to_h) if pending_notification
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(refund: @refund.to_h) if @refund
        hash.merge!(capture_reference: @capture_reference.to_h) if @capture_reference
        hash.merge!(pending_notification: @pending_notification.to_h) if @pending_notification
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/QueryPaymentMeans'
      end

      def response_class
        SixSaferpay::SixTransaction::RefundRespose
      end
    end
  end
end
