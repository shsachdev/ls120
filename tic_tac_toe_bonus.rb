require "pry"

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]

  def initialize
    @squares = {}
    reset
  end

  def set_square_at(key, marker)
    @squares[key].marker = marker
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select {|key| @squares[key].unmarked?}
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  # returns winning marker or nil
  def winning_marker
    WINNING_LINES.each do |line|
      if same_marker?(@squares.values_at(*line))
        return @squares.values_at(*line)[0].marker
      end
    end
    nil
  end

  # winning_marker pseudocode

  # 1. Iterate through WINNING_LINES and see if any of the markers
      # for the corresponding keys in @squares are all the same.
  # 2. If they are all the same, then return that marker.
  # 3. If none of them are the same, then return nil.

  def reset
    (1..9).each {|key| @squares[key] = Square.new}
  end

  def draw
    puts ""
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]} "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]} "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]} "
    puts "     |     |"
    puts ""
  end

  private

  def same_marker?(squares)
    squares.collect(&:marker).count(squares[0].marker) == 3 && squares[0].marker != " "
  end
end

class Square
  INITIAL_MARKER = " "
  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end
end

class Player
  attr_reader :marker
  attr_accessor :human_turn

  def initialize(marker)
    @marker = marker
    @human_turn = true
  end
end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"

  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
  end


  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing!"
  end

  def display_board
    puts "You're a #{human.marker}. Computer is a #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def current_player_moves
    if human.human_turn
      human_moves
    else
      computer_moves
    end
  end

  def clear_screen_and_display_board
    system "clear"
    display_board
  end

  def computer_moves
    board[board.unmarked_keys.sample] = computer.marker
  end

  def human_moves
    puts "Choose a square (#{board.unmarked_keys.join(", ")}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end
    board[square] = human.marker
  end

  def display_result
    display_board

    case board.winning_marker
    when human.marker
      puts "You won!"
    when computer.marker
      puts "Computer won!"
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

  def play
    display_welcome_message
    loop do
      clear_screen_and_display_board
      loop do
        current_player_moves
        human.human_turn == false unless human.human_turn == false
        break if board.someone_won? || board.full?
        clear_screen_and_display_board if human.human_turn
      end
      display_result
      break unless play_again?
      board.reset
      puts "Let's play again!"
    end
    display_goodbye_message
  end
end

# we'll kick off the game like this

game = TTTGame.new
game.play
