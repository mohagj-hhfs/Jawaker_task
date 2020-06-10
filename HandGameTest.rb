require_relative   "Classes/InputTake"
require_relative   "Classes/HandGame"

inputTaker = TakeInput.new
handGame = HandGame.new

validateCards = inputTaker.getCardsToValidateFromUser

puts "valid: #{handGame.valid_group(validateCards)}"
