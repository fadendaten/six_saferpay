module SixSaferpay
  module SixManagement
    class HostedFieldsAccessTokenCreateAccessTokenResponse
      attr_accessor(:access_token,
                   )

      def initialize(access_token:
                    )
        @access_token = access_token
      end

      def to_hash
        hash = Hash.new
        hash.merge!(access_token: @access_token)
        hash
      end
      alias_method :to_h, :to_hash
    end
  end
end

