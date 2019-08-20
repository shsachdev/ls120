class GoodDog
  def initialize(name) # initialize method takes a parameter called name.
    @name = name
  end

  def name
    @name
  end

  def name=(n)
    @name = n
  end

  def speak
    "#{@name} says Arf!"
  end
end

# You can pass arguments into the initiliaze method through the new method.

sparky = GoodDog.new("Sparky")

# Here, the string "sparky" is being passed into the new method through to the initialize method,
# and is assigned to the local variable name. Within the constructor, (i.e, the initialize method),
# we then set the instance variable @name to name, which results in assigning the string "Sparky"
# to the @name instance variable.

# Instance variables are responsible for keeping track of information about the state of an object.

sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak # prints out "Arf!"

# All objects of the same class have the same behaviors, though they contain different states;
# here, the different state is the name.

puts sparky.name # different method to the one that is being invoked on line 39
sparky.name = "Spartacus" # this is syntaxtical sugar for the method name=(n) where n is a string.
puts sparky.name
