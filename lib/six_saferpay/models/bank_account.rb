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
      body.merge!(IBAN: @iban) if @iban
      body.merge!(holder_name: @holder_name) if @holder_name
      body.merge!(BIC: @bic) if @bic
      body.merge!(bank_name: @bank_name)
      body.merge!(country_code: @country_code)
      body
    end
    alias_method :to_h, :to_hash

  end
end
