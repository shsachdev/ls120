class MyCar
  attr_accessor :color
  attr_reader :year # only allows you to view the year of your car, not modify it.

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

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end

toyota = MyCar.new(2006, "red", "X8")

puts toyota.color
puts toyota.year
toyota.spray_paint("black")
