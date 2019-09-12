require "pry"

module Hand
  attr_accessor :playing_hand

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


class Deck

  attr_reader :cards

  SUITES = ["A", "H", "S", "C"]
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

  def initialize
    @cards = []
    reset
  end

  def reset
    holder = []
    SUITES.each do |str|
      holder << helper(str, VALUES)
    end
    holder.flatten.each do |hand|
      @cards << Card.new(hand.split("")[0],hand.split("")[1])
    end
  end

  def deal
    @cards.shuffle!.pop
  end

  private

  def helper(string, arr)
    current_cards = []
    arr.each do |num|
      current_cards << num.to_s + string
    end
    current_cards
  end
end


class Card
  attr_reader :value, :suite

  def initialize(value, suite)
    @value = value
    @suite = suite
  end
end


class Game
  attr_reader :player, :dealer, :deck

  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def deal_cards
    2.times do
      player.playing_hand << deck.deal
      dealer.playing_hand << deck.deal
    end
  end

  def show_initial_cards
    player.playing_hand.each do |crd|
      card_converter(crd)
    end
  end

  def card_converter(str) # => "5H" == "5 of Hearts"

  end

  def player_turn
  end

  def dealer_turn
  end

  def show_result
  end

  def start
    deal_cards
    show_initial_cards
    player_turn
    dealer_turn
    show_result
  end
end

Game.new.start
