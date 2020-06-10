require_relative "ValidateStrategy"
require "set"

class SameRankValidation < ValidateStrategy
  def valid_group(cards)
    return false if cards.length > 4

    counter = 1
    valid = true
    cardTypes = Set[]

    if cards[0].type == CardType::Joker
      counter+=1
    end

    while counter < cards.length
      if cards[counter].type == CardType::Joker
        counter+=2
        next
      end

      if !(cardTypes.include?(cards[counter].type))
        cardTypes.add(cards[counter].type)
      else
        return false
      end

      if cards[counter].value != cards[counter - 1].value
        return false
      end

      counter+=1
    end
    return valid
  end
end
