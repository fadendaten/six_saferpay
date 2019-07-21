module SixSaferpay
  module SixSecureData
    class Update

      attr_accessor(:request_header,
                    :update_alias,
                    :update_payment_means
                   )

      def initialize(request_header: nil,
                     update_alias: nil,
                     update_payment_means: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @update_alias = SixSaferpay::UpdateAlias.new(update_alias.to_h) if update_alias
        @update_payment_means = SixSaferpay::UpdatePaymentMeans.new(update_payment_means.to_h) if update_payment_means
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(update_alias: @update_alias.to_h) if @update_alias
        hash.merge!(update_payment_means: @update_payment_means.to_h) if @update_payment_means
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Alias/Update'
      end

      def response_class
        SixSaferpay::SixSecureData::UpdateResponse
      end

    end
  end
end
