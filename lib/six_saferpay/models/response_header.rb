module SixSaferpay
  class ResponseHeader

    attr_accessor :spec_version, :request_id

    def initialize(hash)
      @spec_version = hash[:SpecVersion]
      @request_id = hash[:RequestId]
    end

    def to_hash
      {
        'ResponseHeader': {
          'SpecVersion': @spec_version,
          'RequestId': @request_id
        }
      }
    end
    alias_method :to_h, :to_hash

  end
end
