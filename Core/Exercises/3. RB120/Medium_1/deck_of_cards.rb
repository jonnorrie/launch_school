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

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
drawn
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
p 52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.