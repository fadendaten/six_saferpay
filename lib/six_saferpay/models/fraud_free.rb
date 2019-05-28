module SixSaferpay
  class FraudFree

    attr_accessor(:id,
                  :liability_shift,
                  :score,
                  :investigation_points,
                  :error_message
                 )

    def initialize(id: ,
                   liability_shift: ,
                   score: ,
                   investigation_points: nil,
                   error_message: nil
                  )
      @id = id
      @liability_shift = liability_shift
      @score = score
      @investigation_points = investigation_points
      @error_message = error_message
    end

    def to_hash
      hash = Hash.new
      hash.merge!(id: @id) if @id
      hash.merge!(liability_shift: @liability_shift) if !@liability_shift.nil?
      hash.merge!(score: @score) if @score
      hash.merge!(investigation_points: @investigation_points) if @investigation_points
      hash.merge!(error_message: @error_message) if @error_message
      hash
    end
    alias_method :to_h, :to_hash

  end
end
