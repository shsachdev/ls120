module Moveable
  attr_accessor :speed, :heading, :fuel_capacity, :fuel_efficiency
  # attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include Moveable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end
end


ferrari = WheeledVehicle.new([1,2,3], 5, 7)

puts ferrari.fuel_efficiency

puts ferrari.fuel_capacity
