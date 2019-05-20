module SixSaferpay
  class Liability

    attr_accessor(:liability_shift,
                  :liable_entity,
                  :three_ds,
                  :fraud_free,
                 )

    def initialize(liability_shift:,
                   liable_entity:,
                   three_ds: nil,
                   fraud_free: nil
                  )
      @liability_shift = liability_shift
      @liable_entity = liable_entity
      @three_ds = SixSaferpay::ThreeDs.new(three_ds.to_h) if three_ds
      @fraud_free = SixSaferpay::FraudFree.new(fraud_free.to_h) if fraud_free
    end

    def to_hash
      body = Hash.new
      body.merge!(liability_shift: @liability_shift)
      body.merge!(liable_entity: @liable_entity)
      body.merge!(three_ds: @three_ds.to_h) if @three_ds
      body.merge!(fraud_free: @fraud_free.to_h) if @fraud_free
      body
    end
    alias_method :to_h, :to_hash

  end
end
