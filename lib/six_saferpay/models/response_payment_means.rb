module SixSaferpay
  class ResponsePaymentMeans

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
      @brand = SixSaferpay::Brand.new(**brand.to_h) if brand
      @display_text = display_text
      @wallet = wallet
      @card = SixSaferpay::ResponseCard.new(**card.to_h) if card
      @bank_account = SixSaferpay::BankAccount.new(**bank_account.to_h) if bank_account
      @twint = SixSaferpay::Twint.new(**twint.to_h) if twint
    end

    def to_hash
      hash = Hash.new
      hash.merge!(brand: @brand.to_h)
      hash.merge!(display_text: @display_text)
      hash.merge!(wallet: @wallet) if @wallet
      hash.merge!(card: @card.to_h) if @card
      hash.merge!(bank_account: @bank_account.to_h) if @bank_account
      hash.merge!(twint: @twint.to_h) if @twint
      hash
    end
    alias_method :to_h, :to_hash

  end
end
