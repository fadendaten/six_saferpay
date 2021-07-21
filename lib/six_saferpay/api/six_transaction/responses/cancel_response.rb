module SixSaferpay
  module SixTransaction
    class CancelResponse

      attr_accessor :response_header,
                    :transaction_id,
                    :order_id,
                    :date


      def initialize(response_header:,
                     transaction_id:,
                     order_id: nil,
                     date: nil
                    )
        @response_header = SixSaferpay::ResponseHeader.new(**response_header.to_h) if response_header
        @transaction_id = transaction_id
        @order_id = order_id
        @date = date
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(transaction_id: @transaction_id) if @transaction_id
        hash.merge!(order_id: @order_id) if @order_id
        hash.merge!(date: @date) if @date
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
