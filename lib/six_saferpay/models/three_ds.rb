module SixSaferpay
  class ThreeDs

    attr_accessor(:authenticated, :liability_shift, :xid, :verification_value)

    def initialize(authenticated:,
                   liability_shift:,
                   xid:,
                   verification_value: nil
                  )

      @authenticated = authenticated
      @liability_shift = liability_shift
      @xid = xid
      @verification_value = verification_value
    end

    def to_hash
      body = Hash.new
      body.merge!(Authenticated: @authenticated)
      body.merge!(LiabilityShift: @liability_shift)
      body.merge!(Xid: @xid) if @xid
      body.merge!(VerificationValue: @verification_value) if @verification_value
    end
    alias_method :to_h, :to_hash

  end
end
