class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n  # calling the setter method
    self.age = a * DOG_YEARS #calling the setter method
  end

  def to_s
    "This dog's name is #{self.name} and it is #{self.age} in dog years"
  end
end

sparky = GoodDog.new("Sparky", 4)

puts sparky.age #=> 28

puts sparky #=> #<GoodDog:0x007fb10b0456c8> # invokes to_s

# but, if we define our own custom to_s method within the class, that one will be invoked instead.
