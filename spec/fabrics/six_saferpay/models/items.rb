SpinningWheel.define do
  fabric name: 'item', class_name: 'SixSaferpay::Item' do
    type { 'DIGITAL' }
    id { 'C123192' }
    variant_id { 'C123192-red' }
    name { 'red swiss army knife' }
    category_name { 'knives' }
    description { 'The well known swiss army knife' }
    quantity { '3' }
    unit_price { '200' }
    is_pre_order { true }
    tax_rate { '077' }
    tax_amount { '42' }
    discount_amount { '10' }
  end
end
