module SixSaferpay
  class Check

    attr_accessor(:type,
                  :terminal_id
                  )

    def initialize(type:, terminal_id:)
      @type = type
      @terminal_id = terminal_id
    end

    def to_hash
      hash = Hash.new
      hash.merge!(type: @type) if @type
      hash.merge!(terminal_id: @terminal_id) if @terminal_id
      hash
    end
    alias_method :to_h, :to_hash

  end
end
