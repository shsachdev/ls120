module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

# We have 3 modules and one class. We've mixed in one module into the Animal class.
# The method lookup path is the path Ruby takes to look for a method. We can see this path
# with the ancestors method.

puts "---Animal method lookup---"
puts Animal.ancestors

# This means that when we call a method of any Animal object, first Ruby looks in the
# Animal class, then the Walkable module, then the Object class, then the Kernel module,
# and finally the BasicObject class.
