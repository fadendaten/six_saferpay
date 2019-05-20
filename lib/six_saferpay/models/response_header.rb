module SixSaferpay
  class ResponseHeader

    attr_accessor(:request_id, :spec_version)

    def initialize(request_id:, spec_version:)
      @request_id = request_id
      @spec_version = spec_version
    end

    def to_hash
      body = Hash.new
      body.merge!(request_id: @request_id)
      body.merge!(spec_version: @spec_version)
      body
    end
    alias_method :to_h, :to_hash

  end
end
