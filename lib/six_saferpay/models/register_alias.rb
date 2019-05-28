module SixSaferpay
  class RegisterAlias
    attr_accessor(:id_generator, :id, :lifetime)

    def initialize(id_generator:, id: nil, lifetime: nil)
      @id_generator = id_generator
      @id = id
      @lifetime = lifetime
    end

    def to_hash
      hash = Hash.new
      hash.merge!(id_generator: @id_generator) if @id_generator
      hash.merge!(id: @id) if @id
      hash.merge!(lifetime: @lifetime) if @lifetime
      hash
    end
    alias_method :to_h, :to_hash

  end
end
