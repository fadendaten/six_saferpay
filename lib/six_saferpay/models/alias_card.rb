module SixSaferpay
  class AliasCard

    attr_accessor(:exp_year, :exp_month)

    def initialize(exp_year:, exp_month:)
      @exp_year = exp_year
      @exp_month = exp_month
    end

    def to_hash
      hash = Hash.new
      hash.merge!(exp_year: @exp_year)
      hash.merge!(exp_month: @exp_month)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
