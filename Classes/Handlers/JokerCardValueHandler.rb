require_relative "BaseHandler"
class JokerCardValueHandler < BaseHandler
  def handle(card)
    if !(Constant::Joker_values.include?(card.value))
      raise ArgumentError.new("Please enter correct value")
    end
  end
end
