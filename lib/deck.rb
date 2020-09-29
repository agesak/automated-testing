require_relative 'card'

class Deck

  attr_reader :cards

  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards.push(Card.new(value, suit))
      end
    end
  end

  def draw(card)
    return @cards.select{|i| i.value == card.value && i.suit == card.suit }[0]
  end

  def shuffle
    # shuffles the deck
  end
end