class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n  # calling the setter method
    self.age = a * DOG_YEARS #calling the setter method 
  end
end

sparky = GoodDog.new("Sparky", 4)

puts sparky.age
