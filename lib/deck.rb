require_relative 'card'

class Deck

  attr_reader :cards

  def initialize
    # this should be a list of Card instances
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards.push(Card.new(value, suit))
      end
    end
  end

  def draw
    # returns a card
  end

  def shuffle
    # shuffles the deck
  end
end
