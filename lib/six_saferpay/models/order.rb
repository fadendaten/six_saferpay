module SixSaferpay
  class Order

    attr_accessor(
      :items,
    )

    def initialize(
      items: []
      )

      if items
        @items = items.map {|item_attr| SixSaferpay::Item.new(item_attr) }
      end
    end

    def to_hash
      hash = Hash.new
      if @items
        hash.merge!(items: items.map(&:to_hash))
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
