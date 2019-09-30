class Cat
  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age = n
  end
end

class Bulldog
  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age = a
  end
end

class Person
  attr_accessor :name
  attr_reader :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

bob = Person.new("Robert")

kitty = Cat.new("kitty", 12)

bud = Bulldog.new("bud", 16)

bob.pets << kitty

bob.pets << bud

bob.pets

bob.pets.each do |pet|
  pet.jump
end
