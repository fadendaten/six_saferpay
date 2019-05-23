module SixSaferpay
  class RequestHeader

    attr_accessor :spec_version,
      :customer_id,
      :request_id,
      :retry_indicator,
      :client_info

    def initialize(spec_version: nil,
                   customer_id: nil,
                   request_id: nil,
                   retry_indicator: nil,
                   client_info: nil)
      @spec_version = spec_version || SixSaferpay::API::VERSION
      @customer_id = customer_id || SixSaferpay.config.customer_id
      @request_id = request_id || SecureRandom.uuid
      @retry_indicator = retry_indicator || 0
      @client_info = SixSaferpay::ClientInfo.new(client_info.to_h) if client_info
    end

    def to_hash
      hash = Hash.new
      hash.merge!(spec_version: @spec_version) if @spec_version
      hash.merge!(customer_id: @customer_id) if @customer_id
      hash.merge!(request_id: @request_id) if @request_id
      hash.merge!(retry_indicator: @retry_indicator) if @retry_indicator
      hash.merge!(client_info: @client_info.to_h) if @client_info
      hash
    end
    alias_method :to_h, :to_hash

  end
end
