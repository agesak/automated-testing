
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    validate_card(value, suit.to_sym)
    @value = value
    @suit = suit
  end

def validate_card(value, suit)
  valid_values = (1..13).to_a
  valid_suits = [:hearts, :spades, :clubs, :diamonds]

  if (!valid_values.include?(value)) || (!valid_suits.include?(suit))
    raise ArgumentError.new("Not a valid card")
  end
end

  def to_s
    #  1: Ace
    #  11: Jack
    #  12: Queen
    #  13: King
    face_hash = {"1" => "Ace",
                 "11" => "Jack",
                 "12" => "Queen",
                 "13" => "King"}
    if face_hash.keys.include?(value.to_s)
      return_value = face_hash[value.to_s]
    else
      return_value = @value
    end

    return "#{return_value} of #{suit.to_s}"
  end

end