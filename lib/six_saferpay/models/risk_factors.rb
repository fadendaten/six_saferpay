module SixSaferpay
  class RiskFactors

    attr_accessor(
      :delivery_type,
      :payer_profile,
      :is_b2b,
    )

    def initialize(
      delivery_type: nil,
      payer_profile: nil,
      is_b2b: nil
      )
      @delivery_type = delivery_type

      if payer_profile
        @payer_profile = SixSaferpay::PayerProfile.new(**payer_profile.to_h)
      end
      @is_b2b = is_b2b
    end

    def to_hash
      hash = Hash.new
      if @delivery_type
        hash.merge!(delivery_type: @delivery_type)
      end
      if @payer_profile
        hash.merge!(payer_profile: @payer_profile.to_h)
      end
      if !@is_b2b.nil?
        hash.merge!(is_b2b: @is_b2b)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
