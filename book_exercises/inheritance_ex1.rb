module Parkable
  def park
    puts "I can park in tight spaces"
  end
end

class Vehicle
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles}"
  end

  def initialize
    @@number_of_vehicles = @@number_of_vehicles + 1
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end
end

class MyCar < Vehicle
  include Parkable
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end
