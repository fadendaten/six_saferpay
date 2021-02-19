module SixSaferpay
  class Items

    attr_accessor(
      :type,
      :id,
      :variant_id,
      :name,
      :category_name,
      :description,
      :quantity,
      :unit_price,
      :is_pre_order,
      :tax_amount,
      :discount_amount,
    )

    def initialize(
      type: nil,
      id: nil,
      variant_id: nil,
      name: nil,
      category_name: nil,
      description: nil,
      quantity: nil,
      unit_price: nil,
      is_pre_order: nil,
      tax_amount: nil,
      discount_amount: nil
      )
      @type = type
      @id = id
      @variant_id = variant_id
      @name = name
      @category_name = category_name
      @description = description
      @quantity = quantity
      @unit_price = unit_price
      @is_pre_order = is_pre_order
      @tax_amount = tax_amount
      @discount_amount = discount_amount
    end

    def to_hash
      hash = Hash.new
      if @type
        hash.merge!(type: @type)
      end
      if @id
        hash.merge!(id: @id)
      end
      if @variant_id
        hash.merge!(variant_id: @variant_id)
      end
      if @name
        hash.merge!(name: @name)
      end
      if @category_name
        hash.merge!(category_name: @category_name)
      end
      if @description
        hash.merge!(description: @description)
      end
      if @quantity
        hash.merge!(quantity: @quantity)
      end
      if @unit_price
        hash.merge!(unit_price: @unit_price)
      end
      if !@is_pre_order.nil?
        hash.merge!(is_pre_order: @is_pre_order)
      end
      if @tax_amount
        hash.merge!(tax_amount: @tax_amount)
      end
      if @discount_amount
        hash.merge!(discount_amount: @discount_amount)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
