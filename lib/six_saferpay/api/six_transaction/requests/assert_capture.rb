module SixSaferpay
  module SixTransaction
    class AssertCapture

      attr_accessor(:request_header,
                    :capture_reference
                   )


      def initialize(request_header: nil,
                     capture_reference: )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @capture_reference = SixSaferpay::CaptureReference.new(capture_reference.to_h) if capture_reference
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(capture_reference: @capture_reference.to_h) if @capture_reference
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/AssertCapture'
      end

      def response_class
        SixSaferpay::SixTransaction::AssertCaptureResponse
      end

    end
  end
end
