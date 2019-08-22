module Walkable
  def walk #instance method
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

puts "---Animal method lookup---"
puts Animal.ancestors

fido = Animal.new
fido.speak #=> I'm an animal, and I speak!
fido.walk #=> I'm walking.
