module SixSaferpay
  class Recurring

    attr_accessor(:initial)

    def initialize(initial:)
      @initial = initial
    end

    def to_hash
      body = Hash.new
      body.merge!(Initial: @initial)
      body
    end
    alias_method :to_h, :to_hash

  end
end
