module Flyable
  def fly
    "I'm flying!"
  end
end

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
  include Flyable
end

bird1 = Bird.new("Red")
bird1.color

# Lookup path:

# Bird
# Flyable
# Animal

# When a module is included in a class, the class is searched before the module.
# But, the module is searched before the superclass. This order of precedence applies
# to all modules and classes in the inheritance hierarchy.
