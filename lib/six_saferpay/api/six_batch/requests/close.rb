module SixSaferpay
  module SixBatch
    class Close

      attr_accessor(:request_header,
                    :terminal_id
                   )

      def initialize(request_header: nil,
                     terminal_id: )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @terminal_id = terminal_id
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(terminal_id: @terminal_id) if @terminal_id
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Batch/Close'
      end

      def response_class
        SixSaferpay::SixBatch::CloseResponse
      end

    end
  end
end
