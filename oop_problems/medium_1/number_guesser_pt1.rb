class GuessingGame

  def initialize
    @num_of_guesses = 7
    @range = (1..100).to_a
    @number = (1..100).to_a.sample
  end

  def correct_number?(num)
    return false unless @number == num
    true
  end

  def hint(num)
    if num < @number
      puts "Your guess is too low."
    else
      puts "Your guess is too high."
    end
  end

  def out_of_guesses?
    @num_of_guesses == 0
  end

  def play # this is going to be our main method in which the majority of the program is executed
    loop do
      break if @num_of_guesses == 0
      puts "You have #{@num_of_guesses} guesses remaining."
      puts "Enter a number between 1 and 100: "
      answer = nil
      loop do
        answer = gets.chomp.to_i
        break if @range.include?(answer)
        puts "Invalid guess. Enter a number between 1 and 100: "
      end
      if correct_number?(answer)
        puts "That's the number! You won."
        break
      else
        hint(answer)
      end
      @num_of_guesses -= 1
      if out_of_guesses?
        puts "You have no more guesses!"
        puts "You lost!"
        break
      end
    end
  end
end


game = GuessingGame.new
game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low.
#
# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.
#
# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.
#
# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80
#
# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!
#
# You won!
#
# game.play
#
# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.
#
# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.
#
# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.
#
# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.
#
# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.
#
# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.
#
# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.
#
# You have no more guesses. You lost!
