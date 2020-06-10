require_relative "BaseHandler"
require_relative "JokerCardValueHandler"
require_relative "NormalCardValueHandler"
class JokerTypeValidationHandler < BaseHandler
  def handle(card)
    if CardType::Joker == card.type
      @nextHandler = JokerCardValueHandler.new
      super(card)
    else
      @nextHandler = NormalCardValueHandler.new
      super(card)
    end
  end
end
