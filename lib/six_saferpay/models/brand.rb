module SixSaferpay
  class Brand

    attr_accessor(:payment_method, :fd_name)

    def initialize(payment_method: nil, fd_name:)
      @payment_method = payment_method
      @fd_name = fd_name
    end

    def to_hash
      hash = Hash.new
      hash.merge!(payment_method: @payment_method) if @payment_method
      hash.merge!(fd_name: @fd_name) if @fd_name
      hash
    end
    alias_method :to_h, :to_hash

  end
end
