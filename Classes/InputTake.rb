require_relative  "CardPrinter"
require_relative   "Handlers/TypeValidationHandler"
require_relative   "Handlers/JokerTypeValidationHandler"
require_relative   "CardType"
require_relative   "Constant"

class TakeInput
  def initialize
    typeHandler = TypeValidationHandler.new
    jokerTypeHandler = JokerTypeValidationHandler.new
    typeHandler.nextHandler(jokerTypeHandler)
    @@inputValidator = typeHandler
  end

  def takeCardInput(counter)
    print "Please enter card number #{counter + 1} > "
    card = gets.chomp
    value = card[0].upcase
    type = card[1].downcase
    return Card.new(type, value)
  end

  def validateCardInput(card)
    @@inputValidator.handle(card)
  end

  def getCardsToValidateFromUser
  print "Please input how many cards to validate and the number of cards must be less than 14 > "
  cardsNumber = Integer(gets) rescue nil

  if (cardsNumber == nil ||
    cardsNumber.to_i > 13)

    raise IOError.new("Please enter correct input")
  end

  CardPrinter.new.showGamesCards
  puts "-value and type, for example: 3h,2j"

  counter = 0
  validateCards = []

  while counter < cardsNumber
    begin
      userCard = takeCardInput(counter)
      validateCardInput(userCard)
      validateCards.push(userCard)
      counter+=1
    rescue StandardError => e
      puts e.message
    end
  end

  return validateCards
  end



end
