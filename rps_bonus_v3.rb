class Score
  attr_accessor :computer_score, :player_score

  def initialize
    @computer_score = 0
    @player_score = 0
  end

  def computer_won
    @computer_score += 1
  end

  def player_won
    @player_score += 1
  end
end


class Move
  attr_reader :value

  VALUES = ["rock", "paper", "scissors", "lizard", "spock"]

  COMPUTER_VALUE_WEIGHTS = {"rock" => 0.2, "paper" => 0.2, "scissors" => 0.2, "lizard" => 0.2, "spock" => 0.2} # this is going to change, so should not be a constant.

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == "scissors"
  end

  def rock?
    @value == "rock"
  end

  def paper?
    @value == "paper"
  end

  def lizard?
    @value == "lizard"
  end

  def spock?
    @value == "spock"
  end

  def >(other_move)
    if rock?
      return true if other_move.scissors?
      return true if other_move.lizard?
      return false
    elsif paper?
      return true if other_move.rock?
      return true if other_move.spock?
      return false
    elsif scissors?
      return true if other_move.paper?
      return true if other_move.lizard?
      return false
    elsif lizard?
      return true if other_move.paper?
      return true if other_move.spock?
      return false
    else
      return true if other_move.scissors?
      return true if other_move.rock?
      return false
    end
  end

  def to_s
    @value
  end
end

class MoveHistory < Move
  WIN_COUNTER = {"rock" => 0, "paper" => 0, "scissors" => 0, "lizard" => 0, "spock" => 0} # this is going to change, so should not be a constant.

  WIN_RATIO = {"rock" => 0, "paper" => 0, "scissors" => 0, "lizard" => 0, "spock" => 0} # this is going to change, so should not be a constant.

  attr_accessor :computer_history, :player_history

  def initialize
    @computer_history = []
    @player_history = []
  end

  def computer_history_format # => array of moves (str) rather than array of moves (object format)
    @computer_history.map do |elem|
      elem.value
    end
  end

  def player_history_format
    @player_history.map do |elem|
      elem.value
    end
  end

  def compute_loss_history(obj)
    if @computer_history[-1] > obj[-1]
      WIN_COUNTER[@computer_history[-1].value] += 1
    elsif obj[-1] > @computer_history[-1] != true
      WIN_COUNTER[@computer_history[-1].value] += 0.5
    end
    WIN_COUNTER.each do |k, v|
      if v != 0
        WIN_RATIO[k] = v.to_f / computer_history_format.count(k).to_f
      end
    end
    WIN_RATIO
  end

  def adjust_move_weight
    WIN_RATIO.each do |k, v|
      if v < 0.4 && @computer_history.count(k) > 2
        COMPUTER_VALUE_WEIGHTS[k] -= 0.03
      end
    end
  end
end

# player.history.player_history

class Player
  attr_accessor :move, :name, :score, :history

  def initialize
    set_name
  end
end

class Human < Player
  def set_name
    puts "What's your name?"
    n = gets.chomp
    self.name = n
    self.score = Score.new
    self.history = MoveHistory.new
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, spock, or lizard:"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid."
    end
    self.move = Move.new(choice)
    self.history.player_history << self.move
  end
end

class Computer < Player
  def set_name
    self.name = ["R2D2", "Chipotle", "Anish", "Bahler"].sample # we don't want it to be a random choice
    self.score = Score.new
    self.history = MoveHistory.new
  end

  def choose # alter method take into account compute_loss_history method.
    self.move = Move.new(Move::VALUES.sample)
    self.history.computer_history << self.move
  end
end

# Algorithm for Computer Move Choice

# 1. Analyze Move History and compute losing probability of every type of move
  # => {"rock": 60%, "paper": 30%, "scissors": 50%, "lizard": 33%, "spock": 45%}

# 2. If a particular move has a loss percentage of greater than 60, AND total number of moves > 8, then decrease the
# probability of picking that type of move.

  # At the start, the probability of each type of nmove should be 20%.
  # if condition in 2 above is met, then decrease the probability of that choice by 5% (and distribute that 5% equally amongst the other 4 choices.)

# 3. Pick a random move (with adjusted probabilities).


class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_winner
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."

    if human.move > computer.move
      puts "#{human.name} won!"
      human.score.player_won
    elsif computer.move > human.move
      puts "#{computer.name} won!"
      computer.score.computer_won
    else
      puts "It's a tie!"
    end
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Spock, and Lizard. Good bye!"
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ["y", "n"].include?(answer)
    end
    return true if answer == "y"
    return false
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_winner
      computer.history.compute_loss_history(human.history.player_history)
      computer.history.adjust_move_weight
      puts "Score: Computer has #{computer.score.computer_score} points, Player has #{human.score.player_score} points."
      puts "Histoy of Moves -  Computer: #{computer.history.computer_history_format}. Player: #{human.history.player_history_format}"
      break if computer.score.computer_score == 10 || human.score.computer_score == 10
      p MoveHistory::WIN_RATIO
      p Move::COMPUTER_VALUE_WEIGHTS
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
