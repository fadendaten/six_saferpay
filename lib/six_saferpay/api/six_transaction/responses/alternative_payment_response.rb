module SixSaferpay
  module SixTransaction
    class AlternativePaymentResponse

      attr_accessor(:response_header,
                    :token,
                    :expiration,
                    :processing_data,
                   )



      def initialize(response_header:,
                    token:,
                    expiration:,
                    processing_data: nil)
        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
        @token = token
        @expiration = expiration
        @processing_data = SixSaferpay::ProcessingData.new(@processing_data.to_h) if processing_data
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(token: @token)
        hash.merge!(expiration: @expiration)
        hash.merge!(processing_data: @processing_data.to_h) if @processing_data
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
