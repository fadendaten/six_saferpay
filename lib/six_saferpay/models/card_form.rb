module SixSaferpay
  class CardForm

    attr_accessor(:holder_name)

    def initialize(holder_name: nil)
      @holder_name = holder_name
    end

    def to_hash
      hash = Hash.new
      hash.merge!(holder_name: @holder_name) if @holder_name
      hash
    end
    alias_method :to_h, :to_hash

  end
end
