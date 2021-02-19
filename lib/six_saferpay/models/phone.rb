module SixSaferpay
  class Phone

    attr_accessor(
      :main,
      :mobile,
      :work,
    )

    def initialize(
      main: nil,
      mobile: nil,
      work: nil
      )
      @main = main
      @mobile = mobile
      @work = work
    end

    def to_hash
      hash = Hash.new
      if @main
        hash.merge!(main: @main)
      end
      if @mobile
        hash.merge!(mobile: @mobile)
      end
      if @work
        hash.merge!(work: @work)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
