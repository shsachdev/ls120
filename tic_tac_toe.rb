class Board
  def initialize
    @squares = {1 => Square.new(" "), 2 => Square.new(" "), 3 => Square.new(" "), 4 => Square.new(" "), 5 => Square.new(" "),
    6 => Square.new(" "), 7 => Square.new(" "), 8 => Square.new(" "), 9 => Square.new(" ") }
  end
end

class Square
  def initialize(marker)
    @marker = marker
  end
end

class Player
  def initialize
    # maybe a "marker" to keep track of this player's symbol (ie, "X" or "O")
  end

  def mark

  end
end

class TTTGame
  attr_reader :board

  def initialize
    @board = Board.new
  end


  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing!"
  end

  def display_board
    puts ""
    puts "     |     |"
    puts "     |     |"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "     |     |"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "     |     |"
    puts "     |     |"
    puts ""
  end

  def play
    display_welcome_message
    loop do
      display_board
      first_player_moves
      break if someone_won? || board_full?

      second_player_moves
      break if someone_won? || board_full?
    end
    display_result
    display_goodbye_message
  end
end

# we'll kick off the game like this

game = TTTGame.new
game.play
