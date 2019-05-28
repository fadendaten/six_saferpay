module SixSaferpay
  module SixOmniChannel
    class AcquireTransaction

      attr_accessor(:request_header,
                    :terminal_id,
                    :order_id,
                    :six_transaction_reference
                   )

      def initialize(request_header: nil,
                     terminal_id:,
                     order_id: nil,
                     six_transaction_reference:
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @terminal_id = terminal_id
        @order_id = order_id
        @six_transaction_reference = six_transaction_reference
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(terminal_id: @terminal_id) if @terminal_id
        hash.merge!(order_id: @order_id) if @order_id
        hash.merge!(six_transaction_reference: @six_transaction_reference) if @six_transaction_reference
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/OmniChannel/AcquireTransaction'
      end

      def response_class
        SixSaferpay::SixOmniChannel::AcquireTransactionResponse
      end

    end
  end
end
