class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }


  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def reset
    @deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @deck << Card.new(rank, suit)
      end
    end
    @deck.shuffle!
  end

  def draw
    @deck.pop
  end
end

class PokerHand
  attr_reader :cards

  def initialize(deck)
    @cards = []
    5.times do
      @cards << deck.draw
    end
  end

  def print
    puts @cards
  end

  def to_s
    "#{rank} of #{suit}"
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

  def are_they_continuous?(arr)
    sorted = arr.sort
    results = sorted.map.with_index do |elem, index|
      if index == arr.size - 1
        1
      else
        sorted[index + 1] - elem
      end
    end
    results == [1,1,1,1,1]
  end

  def royal_flush?
    checker_1 = []
    checker_2 = []
    @cards.each do |card|
      checker_1 << card.value
      checker_2 << card.suit
    end
    checker_1.sort == [10,11,12,13,14] && checker_2.uniq.size == 1
  end

  # arr[3,4,5,6,7] => true
  # arr[3,4,7,8,9] => false


  def straight_flush?
    checker_1 = []
    checker_2 = []
    @cards.each do |card|
      checker_1 << card.value
      checker_2 << card.suit
    end
    are_they_continuous?(checker_1) && checker_2.uniq.size == 1
  end

  def four_of_a_kind?
    checker_1 = []
    @cards.each do |card|
      checker_1 << card.value
    end
    arr = checker_1.map do |value|
      checker_1.count(value)
    end
    arr.include?(4)
  end

  def full_house?
    checker_1 = []
    @cards.each do |card|
      checker_1 << card.value
    end
    arr = checker_1.map do |value|
      checker_1.count(value)
    end
    arr.sort == [2,2,3,3,3]
  end

  def flush?
    checker_2 = []
    @cards.each do |card|
      checker_2 << card.suit
    end
    checker_2.uniq.size == 1
  end

  def straight?
    checker_1 = []
    @cards.each do |card|
      checker_1 << card.value
    end
    are_they_continuous?(checker_1)
  end

  def three_of_a_kind?
    checker_1 = []
    @cards.each do |card|
      checker_1 << card.value
    end
    arr = checker_1.map do |value|
      checker_1.count(value)
    end
    arr.include?(3)
  end

  def two_pair?
    checker_1 = []
    @cards.each do |card|
      checker_1 << card.value
    end
    arr = checker_1.map do |value|
      checker_1.count(value)
    end
    arr.count(2) == 4
  end

  def pair?
    checker_1 = []
    @cards.each do |card|
      checker_1 << card.value
    end
    arr = checker_1.map do |value|
      checker_1.count(value)
    end
    arr.count(2) == 2
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])

puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

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

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'
