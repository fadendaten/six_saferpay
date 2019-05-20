module SixSaferpay
  class PaymentMeans

    attr_accessor(:brand,
                  :display_text,
                  :wallet,
                  :card,
                  :bank_account,
                  :twint
                 )

    def initialize(brand:,
                   display_text:,
                   wallet: nil,
                   card: nil,
                   bank_account: nil,
                   twint: nil
                  )
      @brand = SixSaferpay::Brand.new(brand.to_h) if brand
      @display_text = display_text
      @wallet = wallet
      @card = SixSaferpay::Card.new(card.to_h) if card
      @bank_account = bank_account
      @twint = SixSaferpay::Twint.new(twint.to_h) if twint
    end

    def to_hash
      body = Hash.new
      body.merge!(brand: @brand.to_h)
      body.merge!(display_text: @display_text)
      body.merge!(wallet: @wallet) if @wallet
      body.merge!(card: @card.to_h) if @card
      body.merge!(bank_account: @bank_account) if @bank_account
      body.merge!(twint: @twint.to_h) if @twint
      body
    end
    alias_method :to_h, :to_hash

  end
end
