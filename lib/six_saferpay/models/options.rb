module SixSaferpay
  class Options

    attr_accessor :pre_auth

    def initialize(pre_auth: nil)
      @pre_auth = pre_auth
    end

    def to_hash
      body = Hash.new
      body.merge!(PreAuth: @pre_auth) if @pre_auth
      body
    end
    alias_method :to_h, :to_hash

  end
end
