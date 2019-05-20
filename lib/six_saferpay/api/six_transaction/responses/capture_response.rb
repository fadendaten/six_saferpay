module SixSaferpay
  module SixTransaction
    class CaptureResponse

      attr_accessor(:response_header,
                    :capture_id,
                    :status,
                    :date,
                    :invoice
                   )
      def initialize(hash)
        @response_header = SixSaferpay::ResponseHeader.new(response_header)
        @capture_id = capture_id
        @status = status
        @date = date
        @invoice = SixSaferpay::Invoice.new(invoice)
      end

      def to_hash
        hash = Hash.new
        hash.merge!(ResponseHeader: @response_header.to_h) if @response_header
        hash.merge!(CaptureId: @capture_id) if @capture_id
        hash.merge!(Status: @status) if @status
        hash.merge!(Date: @date) if @date
        hash.merge!(Invoice: @invoice) if @invoice
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
