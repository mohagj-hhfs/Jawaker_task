require_relative "ValidateStrategy"
class SequentialValidation < ValidateStrategy
  def valid_group(cards)
    counterSortedCards = 0
    counterDefualt = 0
    counterReverse = 0
    sortedCardsLength = Constant::Sorted_cards.length
    cardsLength = cards.length

    while counterSortedCards < sortedCardsLength
      correctValue = Constant::Sorted_cards[counterSortedCards]

      counterDefualt = validateWithSortedCards(
        correctValue,
        cards[counterDefualt],
        counterDefualt
      )
      counterReverse = validateWithSortedCards(
        correctValue,
        cards[cardsLength - counterReverse - 1],
        counterReverse
      ) #[cardsLength - counterReverse - 1] for reverse index of cards

      if(counterDefualt == cardsLength ||
         counterReverse == cardsLength)
         return true;
      end

      counterSortedCards+=1
    end
    return false
  end

  def validateWithSortedCards(sortedValue , comparingCard , counter)
    if(sortedValue == comparingCard.value ||
      comparingCard.type == CardType::Joker)
      return (counter + 1)
    end

    return 0
  end
end
