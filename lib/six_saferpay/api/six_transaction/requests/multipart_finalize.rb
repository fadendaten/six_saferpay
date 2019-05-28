module SixSaferpay
  module SixTransaction
    class MultipartFinalize

      attr_accessor(:request_header,
                    :transaction_reference
                   )


      def initialize(request_header: nil,
                     transaction_reference: )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @transaction_reference = SixSaferpay::TransactionReference.new(transaction_reference.to_h) if transaction_reference
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(transaction_reference: @transaction_reference.to_h) if @transaction_reference
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/MultipartFinalize'
      end

      def response_class
        SixSaferpay::SixTransaction::MultipartFinalizeResponse
      end

    end
  end
end
