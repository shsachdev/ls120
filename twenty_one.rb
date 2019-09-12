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
    # we need some data structure to keep track of cards.
    # array, hash, something else?
  end

  def deal
    # does the dealer or the deck deal?
  end
end

class Card
  def initialize
    # what are the states of a card?
  end
end

class Game
  def start
    deal_cards
    show_initial_cards
    player_turn
    dealer_turn
    show_result
  end
end

Game.new.start
