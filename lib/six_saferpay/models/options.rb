module SixSaferpay
  class Options

    attr_accessor :pre_auth

    def initialize(pre_auth: nil)
      @pre_auth = pre_auth
    end

    def to_hash
      hash = Hash.new
      hash.merge!(pre_auth: @pre_auth) if @pre_auth
      hash
    end
    alias_method :to_h, :to_hash

  end
end
