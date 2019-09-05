class Vehicle
  @@wheels = 4

  def self.wheels
    @@wheels
  end
end

Vehicle.wheels    # => 4


# this is straightforward. We initialize a class variable, then expose a class method
# to return the value of the class variable.

# Now, let's add a subclass that overrides this class variable.

class Motorcycle < Vehicle
  @@wheels = 2
end

Motorcycle.wheels # => 2

Vehicle.wheels # => 2 Yikes! (why is this returning 2?)

# For some odd reason, the class variable in the sub-class affected the class variable in the super class.

class Car < Vehicle
end

Car.wheels # => 2 Not what we expected!
