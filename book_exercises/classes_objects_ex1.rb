class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed = @current_speed + number
  end

  def brake(number)
    @current_speed = @current_speed - number
  end

  def shut_off
    @current_speed = 0
  end

  def current_speed
    puts "The current speed is #{@current_speed} mph."
  end
end

toyota = MyCar.new("2003", "red", "X8")

puts toyota.color
puts toyota.year
toyota.color = "Blue"
puts toyota.color
