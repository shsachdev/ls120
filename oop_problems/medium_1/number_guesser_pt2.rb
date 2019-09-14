class GuessingGame
  def initialize(low_value, high_value)
    @low_value = low_value
    @high_value = high_value
    @range = (low_value..high_value).to_a
    @num_of_guesses = Math.log2(@range.size).to_i + 1
    @number = @range.sample
  end

  def correct_number?(num)
    @number == num
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
      puts "Enter a number between #{@low_value} and #{@high_value}: "
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


game = GuessingGame.new(100,500)
game.play
