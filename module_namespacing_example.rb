module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

# we call classes in a module by appending the class name to the module name
# with two colons (::)

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new

buddy.speak("Arf!")

kitty.say_name("kitty")

# The second use case for modules we'll look at is using modules as a container
# for methods, called module methods. This involves using modules to house
# other methods.

module Mammal

  ...

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

value = Mammal.some_out_of_place_method(4)
