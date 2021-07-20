module SixSaferpay
  module SixManagement
    class HostedFieldsAccessTokenCreateAccessToken

      attr_accessor(:source_urls,
                    :description
                   )

      def initialize(source_urls:,
                     description:
                    )
        @source_urls = source_urls
        @description = description
      end

      def to_hash
        hash = Hash.new
        hash.merge!(source_urls: @source_urls)
        hash.merge!(description: @description)
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        "/rest/customers/#{customerId}/terminals/#{terminalId}/fields-access-tokens"
      end

      def response_class
        SixSaferpay::SixManagement::HostedFieldsAccessTokenCreateAccessTokenResponse
      end

      private

      def customer_id
        SixSaferpay.config.customer_id
      end

      def terminal_id
        SixSaferpay.config.terminal_id
      end

    end
  end
end
