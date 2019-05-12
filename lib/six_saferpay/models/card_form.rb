module SixSaferpay
  class CardForm

    attr_accessor(:holder_name)

    def initialize(holder_name: nil)
      @holder_name = holder_name
    end

    def to_hash
      body = Hash.new
      body.merge!(HolderName: @holder_name) if @holder_name
      body
    end
    alias_method :to_h, :to_hash

  end
end
