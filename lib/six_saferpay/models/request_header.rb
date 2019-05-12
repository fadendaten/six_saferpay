module SixSaferpay
  class RequestHeader < Model

    attr_accessor :spec_version,
      :customer_id,
      :request_id,
      :retry_indicator,
      :client_info

    def initialize(client_info: nil)
      @spec_version = SixSaferpay::API::VERSION
      @customer_id = SixSaferpay.config.customer_id
      @request_id = SecureRandom.uuid
      @retry_indicator = 0
      @client_info = client_info
    end

    def to_hash
      body = Hash.new
      body.merge!(SpecVersion: @spec_version)
      body.merge!(CustomerId: @customer_id)
      body.merge!(RequestId: @request_id)
      body.merge!(RetryIndicator: @retry_indicator)
      body.merge!(ClientInfo: @client_info.to_h) if @client_info
      body
    end
    alias_method :to_h, :to_hash

  end
end
