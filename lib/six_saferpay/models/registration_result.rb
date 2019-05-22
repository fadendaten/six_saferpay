module SixSaferpay
  class RegistrationResult

    attr_accessor(:success,
                  :alias,
                  :error
                 )


    def initialize(success:,
                   __alias__: nil,
                   error: nil)

      binding.pry
      @success = success
      # @alias = SixSaferpay::Alias.new(__alias__.to_h) if __alias__
      @error = SixSaferpay::Error.new(error.to_h) if error
    end

    def to_hash
      hash = Hash.new
      hash.merge!(sucess: @sucess) if @success
      hash.merge!(alias: @alias.to_h) if @alias
      hash.merge!(error: @error.to_h) if @error
    end

  end
end
