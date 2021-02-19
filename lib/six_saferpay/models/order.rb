module SixSaferpay
  class Order

    attr_accessor(
      :items,
    )

    def initialize(
      items: nil
      )

      if items
        @items = SixSaferpay::Items.new(items.to_h)
      end
    end

    def to_hash
      hash = Hash.new
      if @items
        hash.merge!(items: @items.to_h)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
