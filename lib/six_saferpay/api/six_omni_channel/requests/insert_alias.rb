module SixSaferpay
  module SixOmniChannel
    class InsertAlias

      attr_accessor(:request_header,
                    :register_alias,
                    :six_transaction_reference)

      def initialize(request_header: nil,
                     register_alias:,
                     six_transaction_reference: )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @register_alias = SixSaferpay::RegisterAlias.new(register_alias.to_h) if register_alias
        @six_transaction_reference = six_transaction_reference
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h)
        hash.merge!(register_alias: @register_alias.to_h) if @register_alias
        hash.merge!(six_transaction_reference: @six_transaction_reference) if @six_transaction_reference
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/OmniChannel/InsertAssert'
      end

      def response_class
        SixSaferpay::SixOmniChannel::InsertAssertResponse
      end

    end
  end
end
