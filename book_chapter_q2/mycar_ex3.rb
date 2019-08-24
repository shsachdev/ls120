class MyCar
  attr_accessor :color, :model, :current_speed
  attr_reader :year

  def self.gas_mileage(gallon, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
  end

  def brake(number)
    @current_speed -= number
  end

  def shut_off
    @current_speed = 0
  end

  def spray_paint(c)
    self.color = c
  end

  def to_s
    "My year is #{year}, I am #{color}, and I am a #{model}"
  end
end


hyundai = MyCar.new(2019, "black", "SS")

p hyundai.year
p hyundai.color
p hyundai.model
p hyundai.current_speed

hyundai.speed_up(55555555)
p hyundai.current_speed

hyundai.spray_paint("red")
p hyundai.color
