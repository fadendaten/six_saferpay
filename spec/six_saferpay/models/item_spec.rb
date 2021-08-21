require 'spec_helper'

RSpec.describe SixSaferpay::Item do

subject { SpinningWheel.create('item') }

  let(:hash) {
    {
        type: subject.type,
        id: subject.id,
        variant_id: subject.variant_id,
        name: subject.name,
        category_name: subject.category_name,
        description: subject.description,
        quantity: subject.quantity,
        unit_price: subject.unit_price,
        is_pre_order: subject.is_pre_order,
        tax_amount: subject.tax_amount,
        discount_amount: subject.discount_amount,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the Items' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
