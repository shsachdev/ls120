class Person
  attr_accessor :name, :pet

  def initialize(name)
    @name = name
    @pets = []
  end
end


bob = Person.new("Robert")

kitty = Cat.new

bud = Bulldog.new  # assume bulldog class from previous assignment.

# bob.pet = bud # we have set bob's @pet instance variable to bud, which is a Bulldog object.

# this means that when we call bob.pet, we are returning a Bulldog object.

# because bob.pet returns a Bulldog object, we can chain any Bulldog methods at the end as well.

bob.pets << kitty

bob.pets << bud

# collaborator objects can be any type: strings, arrays, hash or even custom objects.

bob.pets

bob.pets.each do |pet|
  pet.jump
end
