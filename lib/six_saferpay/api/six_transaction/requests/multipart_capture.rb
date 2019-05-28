module SixSaferpay
  module SixTransaction
    class MultipartCapture

      attr_accessor(:request_header,
                    :transaction_reference,
                    :amount,
                    :type,
                    :order_part_id,
                    :marketplace
                   )


      def initialize(request_header: nil,
                     transaction_reference:,
                     amount: nil,
                     type:,
                     order_part_id:,
                     marketplace: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @transaction_reference = SixSaferpay::TransactionReference.new(transaction_reference.to_h) if transaction_reference
        @amount = SixSaferpay::Amount.new(amount.to_h) if amount
        @type = type
        @order_part_id = order_part_id
        @marketplace = SixSaferpay::Marketplace.new(marketplace.to_h) if marketplace
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(transaction_reference: @transaction_reference.to_h) if @transaction_reference
        hash.merge!(amount: @amount.to_h) if @amount
        hash.merge!(type: @type) if @type
        hash.merge!(order_part_id: @order_part_id) if @order_part_id
        hash.merge!(marketplace: @marketplace.to_h) if @marketplace
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/MultipartCapture'
      end

      def response_class
        SixSaferpay::SixTransaction::MultipartCaptureResponse
      end

    end
  end
end
