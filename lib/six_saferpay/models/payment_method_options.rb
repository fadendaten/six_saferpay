module SixSaferpay
  class PaymentMethodOptions

    attr_accessor(:bankcontact)

    def initialize(bankcontact: nil)
      @bankcontact = SixSaferpay::Bankcontact.new(**bankcontact.to_h) if bankcontact
    end

    def to_hash
      hash = Hash.new
      hash.merge!(bankcontact: @bankcontact.to_h) if @bankcontact
      hash
    end
    alias_method :to_h, :to_hash

  end
end
