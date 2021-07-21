module SixSaferpay
  class RegistrationResult

    attr_accessor(:success,
                  :fd_alias,
                  :error,
                  :authentication_result
                 )


    def initialize(success:,
                   fd_alias: nil,
                   error: nil,
                   authentication_result: nil)

      @success = success
      @fd_alias = SixSaferpay::RegistrationAlias.new(**fd_alias.to_h) if fd_alias
      @error = SixSaferpay::RegistrationError.new(**error.to_h) if error
      if authentication_result
        @authentication_result = SixSaferpay::AuthenticationResult
          .new(**authentication_result.to_h)
      end
    end

    def to_hash
      hash = Hash.new
      hash.merge!(success: @success) if !@success.nil?
      hash.merge!(fd_alias: @fd_alias.to_h) if @fd_alias
      hash.merge!(error: @error.to_h) if @error
      if authentication_result
        hash.merge!(authentication_result: @authentication_result.to_h)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
