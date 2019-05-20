module SixSaferpay
  class Recurring

    attr_accessor(:initial)

    def initialize(initial:)
      @initial = initial
    end

    def to_hash
      hash = Hash.new
      hash.merge!(initial: @initial)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
