class Vehicle
  WHEELS = 4
end

class Car < Vehicle
  def self.wheels
    WHEELS
  end

  def wheels
    WHEELS
  end
end

Car.wheels # => 4

a_car = Car.new

a_car.wheels  # => 4

# Things look like what we're used to by now. A constant
# initialized in a super-class is inherited by the subclass, and can be accessed by both
# class and instance methods.

# However, things get a little hairy when we mix in modules. Suppose we have a module that we want to mix in to different vehicles.

module Maintenance
  def change_tires
    "Changing #{WHEELS} tires."
  end
end

class Vehicle
  WHEELS = 4
end

class Car < Vehicle
  include Maintenance
end

a_car = Car.new
a_car.change_tires # => NameError: unitialized comstant Maintenance::WHEELS
