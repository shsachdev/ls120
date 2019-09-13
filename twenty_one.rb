require "pry"

module Hand
  attr_accessor :playing_hand
  attr_reader :total

  def initialize
    @playing_hand = []
  end

  def busted?
    total > 21
  end

  def total
    sum = 0
    playing_hand.each_with_index do |card, index|
      if card.value == "A"
        arr_without_ace = playing_hand.reject.with_index {|elem, idx| idx == index}
        sum_without_ace = 0
        arr_without_ace.each do |elem|
          sum_without_ace += value_calculator(elem.value)
        end
        if sum_without_ace <= 10
          sum += 11
        else
          sum += 1
        end
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
    @cards = []
    holder = []
    SUITES.each do |str|
      holder << helper(str, VALUES)
    end
    holder.flatten.each do |hand|
      if hand.size == 2
        @cards << Card.new(hand.split("")[0],hand.split("")[1])
      else
        @cards << Card.new(hand.split("")[0..1].join, hand.split("")[2])
      end
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

  def hit(participant)
    participant << deck.deal
  end

  def show_initial_cards
    player.playing_hand.each do |crd|
      puts "You have the #{card_converter(crd)[1]} of #{card_converter(crd)[0]}"
    end
    puts "Your card total is #{player.total}"
  end

  def player_turn
    loop do
      puts "Do you want to hit or stay (h/s)?"
      answer = gets.chomp
      break if answer == "s"
      hit(player.playing_hand)
      puts "Your card total is #{player.total}"
      break if player.busted?
    end
    if player.busted?
      puts "Bust! You lose."
    else
      puts "Your card total is #{player.total}"
    end
  end

  def dealer_turn
    loop do
      break if dealer.total == 21 || dealer.total > player.total
      hit(dealer.playing_hand)
    end
  end

  def show_result
    puts "Your card total is #{player.total}. The dealer's total is #{dealer.total}."
    if dealer.total > player.total
      puts "You lose!"
    elsif player.total > dealer.total
      puts "You win!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include?(answer)
      puts "Sorry, must be y or n"
    end
    answer == "y"
  end

  def start
    loop do
      deal_cards
      show_initial_cards
      player_turn
      break if player.busted?
      dealer_turn
      show_result
      break unless play_again?
      deck.reset # why is this not working?
      binding.pry
      puts "Let's play again!"
    end
    puts "Thanks for playing!"
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
        value_str = "Ace"
      end
    end
    arr = [suite_str, value_str]
  end
end

Game.new.start
