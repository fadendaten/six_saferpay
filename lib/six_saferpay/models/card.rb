module SixSaferpay
  class Card

    attr_accessor(:masked_number,
                  :exp_year,
                  :exp_month,
                  :holder_name,
                  :country_code,
                  :hash_value
                 )

    def initialize(masked_number:,
                  exp_year:,
                  exp_month:,
                  holder_name: nil,
                  country_code: nil,
                  hash_value: nil
                  )
      @masked_number = masked_number
      @exp_year = exp_year
      @exp_month = exp_month
      @holder_name = holder_name
      @country_code = country_code
      @hash_value = hash_value
    end

    def to_hash
      body = Hash.new
      body.merge!(masked_number: @masked_number)
      body.merge!(exp_year: @exp_year)
      body.merge!(exp_month: @exp_month)
      body.merge!(holder_name: @holder_name) if @holder_name
      body.merge!(country_code: @country_code) if @country_code
      body.merge!(hash_value: @hash_value) if @hash_value
      body
    end
    alias_method :to_h, :to_hash

  end
end
