module SixSaferpay
  class AddressForm

    attr_accessor(:display, :mandatory_fields)

    def initialize(display:, mandatory_fields: nil)
      @display = display
      @mandatory_fields = mandatory_fields
    end

    def to_hash
      hash = Hash.new
      hash.merge!(display: @display)
      hash.merge!(mandatory_fields: @mandatory_fields) if @mandatory_fields
      hash
    end
    alias_method :to_h, :to_hash

  end
end

