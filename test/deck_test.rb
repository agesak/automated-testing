# Write tests for the Deck class.
# What should you test?
# 1.  Expected Behavior
# 2.  Edge cases

require_relative 'test_helper'

describe Deck do
  describe "you can create a Deck instance" do
    it "can be instantiated" do
      deck = Deck.new
      expect(deck).must_be_instance_of Deck
    end

    it "return a list of card instances" do
      deck = Deck.new
      expect(deck.cards).must_be_instance_of Array
      expect(deck.cards[0]).must_be_instance_of Card
    end
  end

  describe "draw method" do
    it "returns removed card" do
      card = Card.new(2, :diamonds)
      returned_card = Deck.new.draw(card)
      expect(card.value).must_equal returned_card.value
      expect(card.suit).must_equal returned_card.suit
    end

    xit "removes card from the deck" do

    end
  end

end
