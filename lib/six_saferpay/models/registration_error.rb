module SixSaferpay
  class RegistrationError

    attr_accessor(:error_name,
                  :error_message
                 )


    def initialize(error_name: nil,
                   error_message: nil)

      @error_name = error_name
      @error_message = error_message
    end

    def to_hash
      hash = Hash.new
      hash.merge!(error_name: @error_name) if @error_name
      hash.merge!(error_message: @error_message) if @error_message
      hash
    end
    alias_method :to_h, :to_hash

  end
end
