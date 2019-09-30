class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)

sparky.public_disclosure



# Note that in this case, we can not use self.human_years, because the human_years
# method is private. Remember that self.human_years is equivalent to sparky.human_years,
# which is not allowed for private methods. Therefore we have to just use human_years.

# In summary, private methods are not accessible outside of the class definition at all,
# and are only accessible from inside the class when called without self. 
