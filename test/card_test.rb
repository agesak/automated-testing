require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
          expect(card.value).must_be_instance_of Integer
          expect(card.suit).must_be_instance_of Symbol
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      card1 = Card.new(2, "diamonds")
      card2 = Card.new(10, "spades")

      expect(card1.to_s).must_equal "2 of diamonds"
      expect(card2.to_s).must_equal "10 of spades"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)

      # For reference:
      #  1: Ace
      #  11: Jack
      #  12: Queen
      #  13: King
      card1 = Card.new(1, "diamonds")

      expect(card1.to_s).must_equal "Ace of diamonds"
    end
  end

  describe "Reader methods" do
    before do
      @card = Card.new(2, "diamonds")
    end

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      expect(@card.value).must_equal 2
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      expect(@card.suit).must_equal "diamonds"
    end
  end

end
