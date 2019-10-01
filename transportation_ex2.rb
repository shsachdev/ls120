module Transportation
  class Vehicle
  end

  class Truck < Vehicle
  end

  class Car < Vehicle
  end
end

# We can instantiate a class that's contained in a module by invoking
# the following:

Transportation::Truck.new
