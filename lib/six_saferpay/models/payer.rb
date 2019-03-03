module SixSaferpay
  class Payer

    def initialize(language: language)
      @language = language
    end

    def to_hash
      {
        Payer: {
          LanguageCode: @language
        }
      }
    end
    alias_method :to_h, :to_hash
  end
end
