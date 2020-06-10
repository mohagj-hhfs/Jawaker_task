require_relative "Strategy/SameRankValidation"
require_relative "Strategy/SequentialValidation"
require_relative "Strategy/ValidationStrategyFactory"
class GameBoard
  def cardsValidator=(cardsValidator)
    @cardsValidator = cardsValidator
  end

  def valid_group(cards)
      @cardsValidator = ValidationStrategyFactory.new.getValidationStrategy(cards)
      return @cardsValidator.valid_group(cards)
  end
  attr_writer :cardsValidator
end
