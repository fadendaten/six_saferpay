module SixSaferpay
  class Options

    attr_accessor(
      :pre_auth,
      :allow_partial_authorization,
    )

    def initialize(
      pre_auth: nil,
      allow_partial_authorization: nil
      )
      @pre_auth = pre_auth
      @allow_partial_authorization = allow_partial_authorization
    end

    def to_hash
      hash = Hash.new
      if !@pre_auth.nil?
        hash.merge!(pre_auth: @pre_auth)
      end
      if !@allow_partial_authorization.nil?
        hash.merge!(allow_partial_authorization: @allow_partial_authorization)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
