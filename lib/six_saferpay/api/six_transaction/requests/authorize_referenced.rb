module SixSaferpay
  module SixTransaction
    class AuthorizeReferenced

      attr_accessor(:request_header,
                    :terminal_id,
                    :payment,
                    :transaction_reference,
                    :authentication,
                    :suppress_dcc
                   )


      def initialize(request_header: nil,
                     terminal_id: nil,
                     payment:,
                     transaction_reference:,
                     authentication: nil,
                     suppress_dcc:
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @terminal_id = terminal_id || SixSaferpay.config.terminal_id
        @payment = SixSaferpay::Payment.new(**payment.to_h) if payment
        @transaction_reference = SixSaferpay::TransactionReference.new(**transaction_reference.to_h) if transaction_reference
        @authentication = SixSaferpay::Authentication.new(**authentication.to_h) if authentication
        @suppress_dcc = suppress_dcc
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(terminal_id: @terminal_id) if @terminal_id
        hash.merge!(payment: @payment.to_h) if @payment
        hash.merge!(transaction_reference: @transaction_reference.to_h) if @transaction_reference
        hash.merge!(authentication: @authentication.to_h) if @authentication
        hash.merge!(suppress_dcc: @suppress_dcc) if !@suppress_dcc.nil?
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/AuthorizeReferenced'
      end

      def response_class
        SixSaferpay::SixTransaction::AuthorizeReferencedResponse
      end
    end
  end
end
