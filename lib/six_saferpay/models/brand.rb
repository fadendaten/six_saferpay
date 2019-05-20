module SixSaferpay
  class Brand

    attr_accessor(:payment_method, :name)

    def initialize(payment_method: nil, name:)
      @payment_method = payment_method
      @name = name
    end

    def to_hash
      body = Hash.new
      body.merge!(payment_method: @payment_method) if @payment_method
      body.merge!(name: @name)
      body
    end
    alias_method :to_h, :to_hash

  end
end
