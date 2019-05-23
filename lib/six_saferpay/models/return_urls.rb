module SixSaferpay
  class ReturnUrls

    attr_accessor :success, :fd_fail, :fd_abort

    def initialize(success: nil, fd_fail: nil, fd_abort: nil)
      @success = success || SixSaferpay.config.success_url
      @fd_fail = fd_fail || SixSaferpay.config.fail_url
      @fd_abort = fd_abort
    end

    def to_hash
      body = Hash.new
      body.merge!(success: @success) if @success
      body.merge!(fd_fail: @fd_fail) if @fd_fail
      body.merge!(fd_abort: @fd_abort) if @fd_abort
      body
    end
    alias_method :to_h, :to_hash

  end
end
