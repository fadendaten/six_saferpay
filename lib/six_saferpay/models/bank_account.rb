module SixSaferpay
  class BankAccount

    attr_accessor(:iban,
                  :holder_name,
                  :bic,
                  :bank_name,
                  :country_code
                 )

    def initialize(iban:,
                   holder_name: nil,
                   bic: nil,
                   bank_name: nil,
                   country_code: nil
                  )
      @iban = iban
      @holder_name = holder_name
      @bic = bic
      @bank_name = bank_name
      @country_code = country_code
    end

    def to_hash
      body = Hash.new
      body.merge!(IBAN: @iban)
      body.merge!(HolderName: @holder_name)
      body.merge!(BankName: @bank_name)
      body.merge!(CountryCode: @country_code)
      body
    end
    alias_method :to_h, :to_hash

  end
end
