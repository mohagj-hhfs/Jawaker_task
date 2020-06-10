require_relative   "CardType"
require_relative   "Constant"
require_relative   "CardsManager"
require_relative "GameBoard"
class HandGame
  def initialize
    @gameBoard = GameBoard.new
  end

  def valid_group(cards)
    return false if cards == nil
    if (cards.length < 3 ||
      CardsManager.new.getNumberOfJokers(cards) > 1 ||
      cards.length > 13)
      return false
    end
    
    return @gameBoard.valid_group(cards)
  end
end
