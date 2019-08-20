class GoodDog
  def initialize(name) # initialize method takes a parameter called name.
    @name = name
  end
end

# You can pass arguments into the initiliaze method through the new method.

sparky = GoodDog.new("Sparky")

# Here, the string "sparky" is being passed into the new method through to the initialize method,
# and is assigned to the local variable name. Within the constructor, (i.e, the initialize method),
# we then set the instance variable @name to name, which results in assigning the string "Sparky"
# to the @name instance variable.

#
