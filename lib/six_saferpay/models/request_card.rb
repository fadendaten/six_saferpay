module SixSaferpay
  class RequestCard

    attr_accessor(:number,
                  :exp_year,
                  :exp_month,
                  :holder_name,
                  :verification_code
                 )

    def initialize(number:,
                  exp_year:,
                  exp_month:,
                  holder_name: nil,
                  verification_code: nil
                  )
      @number = number
      @exp_year = exp_year
      @exp_month = exp_month
      @holder_name = holder_name
      @verification_code = verification_code
    end

    def to_hash
      hash = Hash.new
      hash.merge!(number: @number)
      hash.merge!(exp_year: @exp_year)
      hash.merge!(exp_month: @exp_month)
      hash.merge!(holder_name: @holder_name) if @holder_name
      hash.merge!(verification_code: @verification_code) if @verification_code
      hash
    end
    alias_method :to_h, :to_hash

  end
end
