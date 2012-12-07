module Wendy

  def wend(arg)
    Wender.new(self, arg)
  end

  class Wender

    def initialize(initiator, arg)
      @initiator = initiator
      @arg = arg
    end

    def through(method)
      Wender.new(initiator, initiator.send(method, arg))
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
