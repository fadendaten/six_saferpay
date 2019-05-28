module SixSaferpay
  class Alias

    attr_accessor(:id,
                  :lifetime)

    def initialize(id:,
                   lifetime: )
      @id = id
      @lifetime = lifetime
    end

    def to_hash
      hash = Hash.new
      hash.merge!(id: @id) if @id
      hash.merge!(lifetime: @lifetime) if @lifetime
      hash
    end
    alias_method :to_h, :to_hash

  end
end
