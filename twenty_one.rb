require "pry"

module Hand
  attr_accessor :playing_hand
  attr_reader :total

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
    sum = 0
    playing_hand.each_with_index do |card, index|
      if card.value == "A"
        sum += ace_value_calc(playing_hand, index)
      else
        sum += value_calculator(card.value)
      end
    end
    sum
  end

  private

  def value_calculator(str)
    if str.to_i != 0
      card_value = str.to_i
    else
      case str
      when "K"
        card_value = 10
      when "J"
        card_value = 10
      when "Q"
        card_value = 10
      when "A"
        card_value = 11
      end
    end
    card_value
  end

  def ace_value_calc(arr, idx)
    arr_without_ace = playing_hand.reject.with_index {|card, index| index == idx}
    ace_value = 0
    if arr_without_ace.total <= 10
      ace_value = 11
    else
      ace_value = 1
    end
    ace_value
  end

  # removes card object from arr, and assign this new array to the local variable new_arr
  # calculates total of new_arr with 11 and with 1.
  # assigns value to card that yields higher value to new_arr
end


class Player
  include Hand
end

class Dealer
  include Hand
end


class Deck

  attr_reader :cards

  SUITES = ["C", "H", "S", "D"]
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
      puts "You have the #{card_converter(crd)[1]} of #{card_converter(crd)[0]}"
    end
    puts "Your card total is #{player.total}"
  end

  def player_turn
    # loop do
    #   puts "Do you want to hit or stay?"
    #   answer = gets.chomp
    # end
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

  private

  def card_converter(obj)
    suite_str = ""
    value_str = ""
    case obj.suite
    when "H"
      suite_str = "Hearts"
    when "S"
      suite_str = "Spades"
    when "C"
      suite_str = "Clubs"
    when "D"
      suite_str = "Diamonds"
    end

    if obj.value.to_i != 0
      value_str = obj.value
    else
      case obj.value
      when "K"
        value_str = "King"
      when "J"
        value_str = "Jack"
      when "Q"
        value_str = "Queen"
      when "A"
        value_str = "Aces"
      end
    end
    arr = [suite_str, value_str]
  end
end

Game.new.start
