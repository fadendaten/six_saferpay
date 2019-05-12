# module SixSaferpay
#   class Terminal
#     attr_accessor :terminal_id

#     def initialize(terminal_id: terminal_id )
#       @terminal_id = terminal_id || SixSaferpay.config.terminal_id
#     end

#     def to_hash
#       {
#         TerminalId: @terminal_id
#       }
#     end
#     alias_method :to_h, :to_hash
#   end
# end
