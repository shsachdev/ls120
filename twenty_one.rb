module Hand
  def initialize
    # What would  states of a player object entail?
    # maybe cards? a name?
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
  def initialize
    cards = {}

  end

  def deal # in our game, the deck will deal cards.

  end
end

class Card
  attr_reader :number_value, :suite

  def initialize(value, suite)
    @number_value = value
    @suite = suite
  end
end

class Game
  attr_reader: player, dealer, deck

  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def deal_cards
    deck.deal
  end

  def show_initial_cards
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
