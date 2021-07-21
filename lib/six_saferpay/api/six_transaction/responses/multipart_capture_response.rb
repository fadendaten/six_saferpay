module SixSaferpay
  module SixTransaction
    class MultipartCaptureResponse

      attr_accessor(:response_header,
                    :capture_id,
                    :status,
                    :date
                   )

      def initialize(response_header: ,
                    capture_id: nil,
                    status: ,
                    date: )
        @response_header = SixSaferpay::ResponseHeader.new(**response_header.to_h) if response_header
        @capture_id = capture_id
        @status = status
        @date = date
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(capture_id: @capture_id) if @capture_id
        hash.merge!(status: @status) if @status
        hash.merge!(date: @date) if @date
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
