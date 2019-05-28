module SixSaferpay
  class ReturnUrls

    attr_accessor :success, :fd_fail, :fd_abort

    def initialize(success: nil, fd_fail: nil, fd_abort: nil)
      @success = success || SixSaferpay.config.success_url
      @fd_fail = fd_fail || SixSaferpay.config.fail_url
      @fd_abort = fd_abort
    end

    def to_hash
      hash = Hash.new
      hash.merge!(success: @success) if @success
      hash.merge!(fd_fail: @fd_fail) if @fd_fail
      hash.merge!(fd_abort: @fd_abort) if @fd_abort
      hash
    end
    alias_method :to_h, :to_hash

  end
end
