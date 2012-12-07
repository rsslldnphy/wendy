module Wendy

  def wend(arg)
    Wender.new(self, arg)
  end

  class Wender

    def initialize(initiator, arg, *others)
      @initiator = initiator
      @arg = arg
      @others = others
    end

    def through(method, *others)
      Wender.new(initiator, initiator.send(method, *([arg] + others)))
    end

    def result
      arg
    end

    alias_method :and, :through
    alias_method :and_return, :result

    private
    attr_reader :initiator, :arg
  end

end
