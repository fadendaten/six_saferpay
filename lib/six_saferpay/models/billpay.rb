module SixSaferpay
  class Billpay

    attr_accessor(:delay_in_days)

    def initialize(delay_in_days: )
      @delay_in_days = delay_in_days
    end

    def to_hash
      hash = Hash.new
      hash.merge!(delay_in_days: @delay_in_days) if @delay_in_days
      hash
    end
    alias_method :to_h, :to_hash

  end
end
