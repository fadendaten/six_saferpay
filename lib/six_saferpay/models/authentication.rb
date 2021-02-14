module SixSaferpay
  class Authentication

    attr_accessor :exemption, :three_ds_challenge

    def initialize(exemption: nil, three_ds_challenge: nil)
      @exemption = exemption
      @three_ds_challenge = three_ds_challenge
    end

    def to_hash
      hash = Hash.new
      hash.merge!(exemption: @exemption) if @exemption
      hash.merge!(three_ds_challenge: @three_ds_challenge) if @three_ds_challenge
      hash
    end
    alias_method :to_h, :to_hash

  end
end
