module SixSaferpay
  class Payee

    attr_accessor(:iban, :holder_name, :bic, :bank_name)

    def initialize(iban:, holder_name: nil, bic: nil, bank_name: nil)
      @iban = iban
      @holder_name = holder_name
      @bic = bic
      @bank_name = bank_name
    end

    def to_hash
      body = Hash.new
      body.merge!(IBAN: @iban)
      body.merge!(HolderName: @holder_name) if @holder_name
      body.merge!(BIC: @bic) if @bic
      body.merge!(BankName: @bank_name) if @bank_name
      body
    end
    alias_method :to_h, :to_hash
  end
end
