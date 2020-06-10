require_relative "BaseHandler"
require_relative "../CardType"
require_relative "../Constant"
require_relative "../Card"
class TypeValidationHandler < BaseHandler
  def handle(card)
    if Constant::Card_types.include?(card.type)
      super(card)
    else
      raise ArgumentError.new("Please enter correct type")
    end
  end

end
