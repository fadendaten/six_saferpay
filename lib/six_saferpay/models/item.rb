module SixSaferpay
  class Item

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
      hash.merge!(type: @type) if @type
      hash.merge!(id: @id) if @id
      hash.merge!(variant_id: @variant_id) if @variant_id
      hash.merge!(name: @name) if @name
      hash.merge!(category_name: @category_name) if @category_name
      hash.merge!(description: @description) if @description
      hash.merge!(quantity: @quantity) if @quantity
      hash.merge!(unit_price: @unit_price) if @unit_price
      hash.merge!(is_pre_order: @is_pre_order) if !@is_pre_order.nil?
      hash.merge!(tax_amount: @tax_amount) if @tax_amount
      hash.merge!(discount_amount: @discount_amount) if @discount_amount

      hash
    end
    alias_method :to_h, :to_hash

  end
end
