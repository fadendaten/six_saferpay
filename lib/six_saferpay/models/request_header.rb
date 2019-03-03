module SixSaferpay
  class RequestHeader

    attr_accessor :spec_version,
      :customer_id,
      :request_id,
      :retry_indicator

    def initialize()
      @spec_version = SixSaferpay::API::VERSION
      @customer_id = SixSaferpay.config.customer_id
      @request_id = SecureRandom.uuid
      @retry_indicator = 0
    end

    def to_hash
      {
        RequestHeader: {
          SpecVersion: @spec_version,
          CustomerId: @customer_id,
          RequestId: @request_id,
          RetryIndicator: @retry_indicator
        }
      }
    end
    alias_method :to_h, :to_hash

  end
end
