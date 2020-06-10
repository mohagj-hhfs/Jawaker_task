require_relative   "CardType"
require_relative   "Constant"
class CardPrinter
  def showGamesCards
    puts "------------------------------"
    puts "You have the following types: "

    Constant::Card_types_full_name.each do |type,abbreviation|
      puts "- #{type}(#{abbreviation})"
    end

    puts "For Joker you have these card values"
    counter = 0

    Constant::Joker_values.each do |value|
      if counter != (Constant::Joker_values.length - 1)
        print "#{value} , "
      else
        print "#{value}"
      end
      counter+=1
    end

    print "\n"
    puts "For other types you have these card values"
    counter = 0

    Constant::Card_values.each do |value|
      if counter != (Constant::Card_values.length - 1)
        print "#{value} , "
      else
        print "#{value}"
      end
      counter+=1
    end

    print "\n"
    puts "------------------------------"
  end
end
