module SixSaferpay
  class FraudFree

    attr_accessor(:id,
                  :liability_shift,
                  :score,
                  :investigationpoints,
                  :error_message
                 )

    def initialize(id: ,
                   liability_shift: ,
                   score: ,
                   investigationpoints: nil,
                   error_message: nil
                  )
      @id = id
      @liability_shift = liability_shift
      @score = score
      @investigationpoints = investigationpoints
      @error_message = error_message
    end

    def to_hash
      hash = Hash.new
      hash.merge!(id: @id) if @id
      hash.merge!(liability_shift: @liability_shift) if @liability_shift
      hash.merge!(score: @score) if @score
      hash.merge!(investigationpoints: @investigationpoints) if @investigationpoints
      hash.merge!(error_message: @error_message) if @error_message
      hash
    end
    alias_method :to_h, :to_hash

  end
end
