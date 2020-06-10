class Card
  def initialize(type, value)
    @type = type
    @value = value
  end

  def view
    puts @value.to_s + @type
  end

  attr_accessor :value

  attr_accessor :type

end
