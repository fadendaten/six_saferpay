module SixSaferpay
  module SixBatch
    class CloseResponse

      attr_accessor(:response_header)

      def initialize(response_header:)
        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
