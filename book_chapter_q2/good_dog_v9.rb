class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n  # calling the setter method
    self.age = a #calling the setter method
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end

  def to_s
    "This dog's name is #{self.name} and it is #{self.age} in dog years"
  end
end

sparky = GoodDog.new("Sparky", 4)

puts sparky.age #=> 4

puts sparky.public_disclosure
