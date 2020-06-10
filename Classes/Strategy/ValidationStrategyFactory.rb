require_relative "../CardType"
require_relative "../Card"
class ValidationStrategyFactory
  def getValidationStrategy(cards)
    currentType = 0

    cards[0].type == CardType::Joker ? currentType = cards[1].type : currentType = cards[0].type

    cards.each do |card|
      if(currentType != card.type &&
         card.type != CardType::Joker)
        return SameRankValidation.new
      end
    end

    return SequentialValidation.new
  end

end
