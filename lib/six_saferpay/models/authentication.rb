module SixSaferpay
  class Authentication

    attr_accessor(
      :result,
      :message,
      :xid,
      :exemption,
      :three_ds_challenge
    )

    def initialize(result: nil, # ATTENTION: This is in some case mandatory
                   message: nil, # ATTENTION: This is in some case mandatory
                   xid: nil,
                   exemption: nil,
                   three_ds_challenge: nil)
      @result = result
      @message = message
      @xid = xid
      @exemption = exemption
      @three_ds_challenge = three_ds_challenge
    end

    def to_hash
      hash = Hash.new
      hash.merge!(result: @result) if @result
      hash.merge!(message: @message) if @message
      hash.merge!(xid: @xid) if @xid
      hash.merge!(exemption: @exemption) if @exemption
      hash.merge!(three_ds_challenge: @three_ds_challenge) if @three_ds_challenge
      hash
    end
    alias_method :to_h, :to_hash

  end
end
