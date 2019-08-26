module Transportation
  class Vehicle
  end

  class Truck < Vehicle
  end

  class Car < Vehicle
  end
end

# Namespacing is where similar classes are grouped within a module.

# Grouping classes in a module can also help avoid collision with classes of the same name.

truck1 = Transportation::Truck.new
