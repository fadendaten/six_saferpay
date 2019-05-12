module SixSaferpay
  class BillingAddressForm

    attr_accessor(:display, :mandatory_fields)

    def initialize(display:, mandatory_fields: nil)
      @display = display
      @mandatory_fields = mandatory_fields
    end

    def to_hash
      body = Hash.new
      body.merge!(Display: @display)
      body.merge!(MandatoryFields: @mandatory_fields) if @mandatory_fields
      body
    end
    alias_method :to_h, :to_hash

  end
end
