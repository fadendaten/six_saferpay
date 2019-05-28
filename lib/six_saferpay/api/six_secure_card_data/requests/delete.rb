module SixSaferpay
  module SixSecureData
    class Delete

      attr_accessor(:request_header,
                    :alias_id
                   )

      def initialize(request_header: nil,
                     alias_id: )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @alias_id = alias_id
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(alias_id: @alias_id) if @alias_id
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Alias/Delete'
      end

      def response_class
        SixSaferpay::SixSecureData::DeleteResponse
      end

    end
  end
end
