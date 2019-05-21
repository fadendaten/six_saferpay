module SixSaferpay
  class Alias

    attr_accessor(:id,
                  :lifetime
                 )

    def initialize(id:,
                   lifetime: nil
                  )
      @id = id
      @lifetime = lifetime
    end

    def to_hash
      body = Hash.new
      body.merge!(id: @id) if @id
      body.merge!(lifetime: @lifetime) if @lifetime
      body
    end
    alias_method :to_h, :to_hash
  end
end
