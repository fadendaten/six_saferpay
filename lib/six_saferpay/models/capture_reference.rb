module SixSaferpay
  class CaptureReference

    attr_accessor(:capture_id,
                  :transaction_id,
                  :order_id,
                  :order_part_id
    )

    def initialize(capture_id: nil,
                   transaction_id: nil,
                   order_id: nil,
                   order_part_id: nil
                  )
      @capture_id = capture_id
      @transaction_id = transaction_id
      @order_id = order_id
      @order_part_id = order_part_id

    end

    def to_hash
      hash = Hash.new
      hash.merge!(capture_id: @capture_id) if @capture_id
      hash.merge!(transaction_id: @transaction_id) if @transaction_id
      hash.merge!(order_id: @order_id) if @order_id
      hash.merge!(order_part_id: @order_part_id) if @order_part_id
      hash
    end
    alias_method :to_h, :to_hash

  end
end
