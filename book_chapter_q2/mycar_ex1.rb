class MyCar
  attr_accessor :year, :color, :model, :current_speed

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def speed_up
    @current_speed += 10
  end

  def brake
    @current_speed -= 10
  end

  def shut_off
    @current_speed = 0
  end
end

hyundai = MyCar.new(2019, "black", "SS")

p hyundai.year
p hyundai.color
p hyundai.model
p hyundai.current_speed

hyundai.speed_up

p hyundai.current_speed
