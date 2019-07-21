module SixSaferpay
  class UpdatePaymentMeans

    attr_accessor(:card)

    def initialize(card: nil)
      @card = SixSaferpay::AliasCard.new(card.to_h) if card
    end

    def to_hash
      hash = Hash.new
      hash.merge!(card: @card.to_h) if @card
      hash
    end
    alias_method :to_h, :to_hash

  end
end
