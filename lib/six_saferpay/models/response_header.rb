module SixSaferpay
  class ResponseHeader

    attr_accessor(:request_id, :spec_version)

    def initialize(request_id:, spec_version:)
      @request_id = request_id
      @spec_version = spec_version
    end

    def to_hash
      hash = Hash.new
      hash.merge!(request_id: @request_id)
      hash.merge!(spec_version: @spec_version)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
