module SixSaferpay
  class PaymentMeans

    attr_accessor :brand, :display_text, :wallet, :card, :bank_account, :twint

    def initialize(brand: brand,
                   display_text: display_text,
                   wallet: wallet,
                   card: card,
                   bank_account: bank_account,
                   twint: twint,
                  )
      @brand = brand
      @display_text = display_text
      @wallet = wallet
      @card = card
      @bank_account = bank_account
      @twint = twint
    end

    def to_hash

    end
    alias_method :to_h, :to_hash
  end
end
