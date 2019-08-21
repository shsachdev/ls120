class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age #@name and @age instance variables given to us by the attr_accessor method.

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years." # this method overrides to_s when we just write puts sparky
  end
end


sparky = GoodDog.new("Sparky", 4)
puts sparky.age

puts sparky
