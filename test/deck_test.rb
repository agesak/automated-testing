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
      card = Deck.new.draw
      expect(card).must_be_instance_of Card
    end
  end

  describe "shuffle" do
    it "responds to shuffle" do
      expect(Deck.new.shuffle).must_respond_to :shuffle
    end
  end

  describe "count" do
    it "counts cards in deck" do
      expect(Deck.new.count).must_equal 52
    end
  end

end
