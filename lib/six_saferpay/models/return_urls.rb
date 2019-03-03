module SixSaferpay
  class ReturnUrls
    attr_accessor :success_url, :fail_url

    def initialize
      @success_url = SixSaferpay.config.success_url
      @fail_url = SixSaferpay.config.fail_url
    end

    def to_hash
      {
        ReturnUrls: {
          Success: @success_url,
          Fail: @fail_url
        }
      }
    end
    alias_method :to_h, :to_hash
  end
end
