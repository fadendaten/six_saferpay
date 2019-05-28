module SixSaferpay
  module SixTransaction
    class Authorize

      attr_accessor :request_header,
                    :token,
                    :condition,
                    :verification_code,
                    :register_alias


      def initialize(request_header: nil,
                     token:,
                     condition: nil,
                     verification_code: nil,
                     register_alias: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @token = token
        @condition = condition
        @verification_code = verification_code
        @register_alias = SixSaferpay::RegisterAlias.new(register_alias.to_h) if register_alias
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @register_alias
        hash.merge!(token: @token) if @token
        hash.merge!(condition: @condition) if @condition
        hash.merge!(verification_code: @verification_code) if @verification_code
        hash.merge!(register_alias: @register_alias.to_h) if @register_alias
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/Authorize'
      end
    end
  end
end
