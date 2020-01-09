module SixSaferpay
  class Ideal

    attr_accessor(:issuer_id)

    def initialize(issuer_id:)
      @issuer_id = issuer_id
    end

    def to_hash
      hash = Hash.new
      hash.merge!(issuer_id: @issuer_id) if @issuer_id
      hash
    end
    alias_method :to_h, :to_hash

  end
end
