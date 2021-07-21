module SixSaferpay
  module SixTransaction
    class RefundDirect

      attr_accessor(:request_header,
                    :terminal_id,
                    :refund,
                    :payment_means
                   )


      def initialize(request_header: nil,
                     terminal_id:,
                     refund:,
                     payment_means:
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @terminal_id = terminal_id
        @refund = SixSaferpay::Refund.new(**refund.to_h) if refund
        @payment_means = SixSaferpay::RequestPaymentMeans.new(**payment_means.to_h) if payment_means
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(terminal_id: @terminal_id) if @terminal_id
        hash.merge!(refund: @refund.to_h) if @refund
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/RefundDirect'
      end

      def response_class
        SixSaferpay::SixTransaction::RefundDirectResponse
      end
    end
  end
end
