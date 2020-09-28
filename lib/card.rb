
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    validate_card
  end

  def validate_card
    valid_values = (1..13).to_a
    valid_suits = [:hearts, :spades, :clubs, :diamonds]

    if !(valid_values.include?(@value)) || (valid_suits.include?(@value))
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
