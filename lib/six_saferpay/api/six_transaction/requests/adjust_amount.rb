module SixSaferpay
  module SixTransaction
    class AdjustAmount

      attr_accessor(:request_header,
                    :token,
                    :amount
                   )



      def initialize(request_header: nil,
                     token: ,
                     amount: )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @token = token
        @amount = SixSaferpay::Amount.new(amount.to_h) if amount
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(token: @token) if @token
        hash.merge!(amount: @amount.to_h) if @amount
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/AdjustAmount'
      end
    end
  end
end
