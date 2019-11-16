module SixSaferpay
  class SaferpayFields

    attr_accessor :token

    def initialize(token: )
      @token = token
    end

    def to_hash
      hash = Hash.new
      hash.merge!(token: @token) if @token
      hash
    end
    alias_method :to_h, :to_hash

  end
end
