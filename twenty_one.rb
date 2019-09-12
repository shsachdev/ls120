require "pry"

module Hand
  def initialize
    @playing_hand = []
  end

  def hit
  end

  def stay
  end

  def busted?
  end

  def total
    # we need to know about cards to produce some total
  end
end



class Player
  include Hand
end

class Dealer
  include Hand
end

# class Participant
#   # what goes in here? all the redundant behaviors from Player and Dealer?
# end

class Deck

  SUITES = ["A", "H", "S", "C"]
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]


  # Create an array of 52 elements, where each element is an object representing a card.
  # This card has a value and a suite.

  # Algorithm

  # 1. Initialize a constant SUITES with all suites, represented as strings.
  # 2. Initialize a constant VALUES with all card values, represent as both strings and integers.
  # 3. For each suite, pass in the suite and all 12 values into deck_of_cards as an object.
  # 4.

  def helper(string, arr)
    cards = []
    arr.each do |num|
      a = num.to_s + string
      cards << a
    end
    cards
  end

  def initialize
    @deck_of_cards = []
    holder = []
    SUITES.each do |str|
      holder << helper(str, VALUES)
    end
    holder.flatten.each do |hand|
      @deck_of_cards << Card.new(hand.split("")[0],hand.split("")[1])
    end
  end

  def deal # in our game, the deck will deal cards.

  end
end


class Card
  attr_reader :value, :suite

  def initialize(value, suite)
    @value = value
    @suite = suite
  end
end

Deck.new
#
# class Game
#   attr_reader: player, dealer, deck
#
#   def initialize
#     @player = Player.new
#     @dealer = Dealer.new
#     @deck = Deck.new
#   end
#
#   def deal_cards
#     player.playing_hand << deck.deal
#     computer.playing_hand << deck.deal
#   end
#
#   def show_initial_cards
#   end
#
#   def player_turn
#   end
#
#   def dealer_turn
#   end
#
#   def show_result
#   end
#
#   def start
#     deal_cards
#     show_initial_cards
#     player_turn
#     dealer_turn
#     show_result
#   end
# end
#
# Game.new.start
