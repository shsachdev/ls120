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

class MoveHistory
  attr_accessor :computer_history, :player_history

  def initialize
    @computer_history = []
    @player_history = []
  end
end


class Move
  attr_reader :value

  VALUES = ["rock", "paper", "scissors", "lizard", "spock"]

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
    self.history.player_history << choice
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ["R2D2", "Chipotle", "Anish", "Bahler"].sample
    self.score = Score.new
    self.history = MoveHistory.new
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
    self.history.computer_history << self.move.value
  end
end


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
      puts "Score: Computer has #{computer.score.computer_score} points, Player has #{human.score.player_score} points."
      puts "Histoy of Moves -  Computer: #{computer.history.computer_history}. Player: #{human.history.player_history}"
      break if computer.score.computer_score == 10 || human.score.computer_score == 10
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
