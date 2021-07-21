module SixSaferpay
  module SixSecureData
    class InsertDirect

      attr_accessor(:request_header,
                    :register_alias,
                    :payment_means,
                    :check
                   )

      def initialize(request_header: nil,
                     register_alias:,
                     payment_means:,
                     check: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @register_alias = SixSaferpay::RegisterAlias.new(**register_alias.to_h) if register_alias
        @payment_means = SixSaferpay::RequestPaymentMeans.new(**payment_means.to_h) if payment_means
        @check = SixSaferpay::Check.new(**check.to_h) if check
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(register_alias: @register_alias.to_h) if @register_alias
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash.merge!(check: @check.to_h) if @check
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Alias/InsertDirect'
      end

      def response_class
        SixSaferpay::SixSecureData::InsertDirectResponse
      end

    end
  end
end
