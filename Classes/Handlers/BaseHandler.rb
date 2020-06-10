require_relative "Handler"
class BaseHandler < Handler
  attr_writer :nextHandler

  def nextHandler(handler)
    @nextHandler = handler
  end

  def handle(card)
    return @nextHandler.handle(card) if @nextHandler
  end
end
