require_relative   "CardType"
require_relative   "Constant"
class CardsManager
  def getNumberOfJokers(cards)
    numberOfJokers = 0
    cards.each do |card|
      numberOfJokers+=1 if card.type == CardType::Joker
    end
    return numberOfJokers
  end
end
