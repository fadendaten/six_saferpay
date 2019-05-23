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
      hash = Hash.new
      hash.merge!(iban: @iban) if @iban
      hash.merge!(holder_name: @holder_name) if @holder_name
      hash.merge!(bic: @bic) if @bic
      hash.merge!(bank_name: @bank_name)
      hash.merge!(country_code: @country_code)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
