module SixSaferpay
  class RegistrationResult

    attr_accessor(:success,
                  :alias,
                  :error
                 )


    def initialize(success:,
                   alias: nil,
                   error: nil)

      @success = success
      @alias = SixSaferpay::Alias.new(__alias__.to_h) if __alias__
      @error = SixSaferpay::Error.new(error.to_h) if error
    end

    def to_hash
      hash = Hash.new
      hash.merge!(Success: @sucess) if @success
      hash.merge!(Alias: @alias.to_h) if @alias
      hash.merge!(Error: @error.to_h) if @error
    end

  end
end
