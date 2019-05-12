module SixSaferpay
  class Error < StandardError

    attr_accessor :message

    def initialize(message = nil)
      @message = message
      super(message)
    end
  end
end
