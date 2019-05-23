module SixSaferpay
  class ResponseCard

    attr_accessor(:masked_number,
                  :exp_year,
                  :exp_month,
                  :holder_name,
                  :holder_segment,
                  :country_code,
                  :hash_value
                  # :verification_code
                 )

    def initialize(masked_number:,
                  exp_year:,
                  exp_month:,
                  holder_name: nil,
                  holder_segment: nil,
                  country_code: nil,
                  hash_value: nil
                  # verification_code: nil
                  )
      @masked_number = masked_number
      @exp_year = exp_year
      @exp_month = exp_month
      @holder_name = holder_name
      @holder_segment = holder_segment
      @country_code = country_code
      @hash_value = hash_value
      # @verification_code = verification_code
    end

    def to_hash
      hash = Hash.new
      hash.merge!(masked_number: @masked_number)
      hash.merge!(exp_year: @exp_year)
      hash.merge!(exp_month: @exp_month)
      hash.merge!(holder_name: @holder_name) if @holder_name
      hash.merge!(holder_segment: @holder_segment) if @holder_segment
      hash.merge!(country_code: @country_code) if @country_code
      hash.merge!(hash_value: @hash_value) if @hash_value
      # hash.merge!(verification_code: @verification_code) if @verification_code
      hash
    end
    alias_method :to_h, :to_hash

  end
end
