require_relative "BaseHandler"
class NormalCardValueHandler < BaseHandler
  def handle(card)
    if !(Constant::Card_values.include?(card.value))
      raise ArgumentError.new("Please enter correct value")
    end
  end
end
