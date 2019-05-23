module SixSaferpay
  class RequestPaymentMeans

    attr_accessor(:card,
                  :bank_account,
                  :fd_alias
                 )

    def initialize(card: nil,
                   bank_account: nil,
                   fd_alias: nil
                  )
      @card = SixSaferpay::RequestCard.new(card.to_h) if card
      @bank_account = SixSaferpay::BankAccount.new(bank_account.to_h) if bank_account
      @fd_alias = SixSaferpay::PaymentMeansAlias.new(fd_alias.to_h) if fd_alias
    end

    def to_hash
      hash = Hash.new
      hash.merge!(card: @card.to_h) if @card
      hash.merge!(bank_account: @bank_account.to_h) if @bank_account
      hash.merge!(fd_alias: @fd_alias.to_h) if @fd_alias
      hash
    end
    alias_method :to_h, :to_hash

  end
end

