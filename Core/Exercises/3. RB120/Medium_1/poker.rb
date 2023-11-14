class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  attr_writer :deck

  def initialize
    @deck = []
    reset
  end

  def draw
    reset if @deck.empty?
    drawn_card = @deck.sample
    @deck.delete_at(@deck.index(drawn_card))
  end

  private

  def reset
    RANKS.each do|card|
      SUITS.each do |suit|
        @deck << Card.new(card, suit)
      end
    end
  end
end

class Card
  include Comparable

  RANK = {"Jack" => 11, "Queen" => 12, "King" => 13, "Ace" => 14}
  
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other_card)
    RANK.fetch(rank, rank) <=> RANK.fetch(other_card.rank, other_card.rank)
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

# Include Card and Deck classexs from the last two exercises.

class PokerHand
  attr_reader :hand
  def initialize(input)
    if input === Deck.class
      @hand = []
      5.times {@hand << input.draw}
    else
      @hand = input
    end
  end

  def print
    puts hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?

  end

  def straight_flush?

  end

  def four_of_a_kind?
  end

  def full_house?
  end

  def flush?
  end

  def straight?
  end

  def three_of_a_kind?
    
  end

  def two_pair?
    counter = 0
    hand.each.with_index do |card_1, index_1|
      hand.each.with_index do |card_2, index_2|
        next if index_1 == index_2
        counter += 1 if card_1.rank == card_2.rank
      end
    end
    return true if counter == 4
  end

  def pair?
    counter = 0
    hand.each.with_index do |card_1, index_1|
      hand.each.with_index do |card_2, index_2|
        next if index_1 == index_2
        counter += 1 if card_1.rank == card_2.rank
      end
    end
    return true if counter == 2
  end
end

#-----------------------------------------------------------------------------------

hand = PokerHand.new(Deck.new)
hand.print
#puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
#hand = PokerHand.new([
#  Card.new(10,      'Hearts'),
#  Card.new('Ace',   'Hearts'),
#  Card.new('Queen', 'Hearts'),
#  Card.new('King',  'Hearts'),
#  Card.new('Jack',  'Hearts')
#])
#puts hand.evaluate == 'Royal flush'

#hand = PokerHand.new([
#  Card.new(8,       'Clubs'),
#  Card.new(9,       'Clubs'),
#  Card.new('Queen', 'Clubs'),
#  Card.new(10,      'Clubs'),
#  Card.new('Jack',  'Clubs')
#])
#puts hand.evaluate == 'Straight flush'

#hand = PokerHand.new([
#  Card.new(3, 'Hearts'),
#  Card.new(3, 'Clubs'),
#  Card.new(5, 'Diamonds'),
#  Card.new(3, 'Spades'),
#  Card.new(3, 'Diamonds')
#])
#puts hand.evaluate == 'Four of a kind'

#hand = PokerHand.new([
#  Card.new(3, 'Hearts'),
#  Card.new(3, 'Clubs'),
#  Card.new(5, 'Diamonds'),
#  Card.new(3, 'Spades'),
#  Card.new(5, 'Hearts')
#])
#puts hand.evaluate == 'Full house'

#hand = PokerHand.new([
#  Card.new(10, 'Hearts'),
#  Card.new('Ace', 'Hearts'),
#  Card.new(2, 'Hearts'),
#  Card.new('King', 'Hearts'),
#  Card.new(3, 'Hearts')
#])
#puts hand.evaluate == 'Flush'

#hand = PokerHand.new([
#  Card.new(8,      'Clubs'),
#  Card.new(9,      'Diamonds'),
#  Card.new(10,     'Clubs'),
#  Card.new(7,      'Hearts'),
#  Card.new('Jack', 'Clubs')
#])
#puts hand.evaluate == 'Straight'

#hand = PokerHand.new([
#  Card.new('Queen', 'Clubs'),
#  Card.new('King',  'Diamonds'),
#  Card.new(10,      'Clubs'),
#  Card.new('Ace',   'Hearts'),
#  Card.new('Jack',  'Clubs')
#])
#puts hand.evaluate == 'Straight'

#hand = PokerHand.new([
#  Card.new(3, 'Hearts'),
#  Card.new(3, 'Clubs'),
#  Card.new(5, 'Diamonds'),
#  Card.new(3, 'Spades'),
#  Card.new(6, 'Diamonds')
#])
#puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

#hand = PokerHand.new([
#  Card.new(2,      'Hearts'),
#  Card.new('King', 'Clubs'),
#  Card.new(5,      'Diamonds'),
#  Card.new(9,      'Spades'),
#  Card.new(3,      'Diamonds')
#])
#puts hand.evaluate == 'High card'