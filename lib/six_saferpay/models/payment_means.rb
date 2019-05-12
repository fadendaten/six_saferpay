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
      @brand = brand
      @display_text = display_text
      @wallet = wallet
      @card = card
      @bank_account = bank_account
      @twint = twint
    end

    def to_hash
      body = Hash.new
      body.merge!(Brand: @brand.to_h)
      body.merge!(DisplayText: @display_text)
      body.merge!(Wallet: @wallet) if @wallet
      body.merge!(Card: @card.to_h) if @card
      body.merge!(BankAccount: @bank_account) if @bank_account
      body.merge!(Twint: @twint.to_h) if @twint
      body
    end
    alias_method :to_h, :to_hash

  end
end
