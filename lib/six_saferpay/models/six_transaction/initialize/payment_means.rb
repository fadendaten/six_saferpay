module SixSaferpay
  module SixTransaction
    module Initialize
      class PaymentMeans

        attr_accessor(:card,
                      :bank_account,
                      :six_alias
                     )

        def initialize(card: nil,
                       bank_account: nil,
                       six_alias: nil
                      )
          @card = card
          @bank_account = bank_account
          @six_alias = six_alias
        end

        def to_hash
          body = Hash.new
          body.merge!(Card: @card.to_h) if @card
          body.merge!(BankAccount: @bank_account.to_h) if @bank_account
          body.merge!(Alias: @six_alias.to_h) if @six_alias
          body
        end
        alias_method :to_h, :to_hash

      end
    end
  end
end
