require "set"
class Constant
  Card_values = Set["A" , "2" , "3" , "4" , "5" , "6" , "7" , "8" , "9" , "10" , "J" , "Q" , "K"]
  Joker_values= Set["1" , "2" ]
  Card_types = Set[CardType::Hearts , CardType::Clubs , CardType::Speads ,CardType::Joker , CardType::Diamonds]
  Card_types_full_name = {"Hearts" => CardType::Hearts ,"Clubs" => CardType::Clubs , "Speads" => CardType::Speads , "Joker" =>CardType::Joker ,  "Diamonds" =>CardType::Diamonds}
  Sorted_cards = ["A" , "2" , "3" , "4" , "5" , "6" , "7" , "8" , "9" , "10" , "J" , "Q" , "K", "A"]
end
