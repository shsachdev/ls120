module Parkable
  def park_in_tight_spaces
    true
  end
end

class Vehicle
  attr_accessor :color, :model, :current_speed
  attr_reader :year

  @@number_of_vehicles = 0

  def self.gas_mileage(gallon, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end

  def age
    age_calculator
  end

  private

  def age_calculator
    Time.now.year - self.year
  end

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    @@number_of_vehicles += 1
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

  def self.number_of_vehicles
    puts @@number_of_vehicles
  end
end

class MyCar < Vehicle
  include Parkable
  LICENSE_PLATE = "FT1209KI"
end

class MyTruck < Vehicle
  LICENSE_PLATE = "TR1209KI"
end

laguna = MyCar.new(2000,"purple", "SS12")

p laguna.age
