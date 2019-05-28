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
      hash = Hash.new
      hash.merge!(authenticated: @authenticated) if !@authenticated.nil?
      hash.merge!(liability_shift: @liability_shift) if !@liability_shift.nil?
      hash.merge!(xid: @xid) if @xid
      hash.merge!(verification_value: @verification_value) if @verification_value
      hash
    end
    alias_method :to_h, :to_hash

  end
end
