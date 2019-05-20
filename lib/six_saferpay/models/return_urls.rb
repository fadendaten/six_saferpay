module SixSaferpay
  class ReturnUrls

    attr_accessor :success, :fail, :abort

    def initialize(success: nil, fail: nil, abort: nil)
      @success = success || SixSaferpay.config.success_url
      @fail = fail || SixSaferpay.config.fail_url
      @abort = abort
    end

    def to_hash
      body = Hash.new
      body.merge!(success: @success)
      body.merge!(fail: @fail)
      body.merge!(abort: @abort) if @abort
      body
    end
    alias_method :to_h, :to_hash

  end
end
