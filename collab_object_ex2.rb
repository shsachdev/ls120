class Person
  attr_accessor :name, :pet

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Robert")

bud = Bulldog.new # assume Bulldog class from previous assignment

bob.pet = bud

# We've set bob's @pet instance variable to bud, which is a Bulldog object.
# This means that when we call bob.pet, it is returning a Bulldog object.

bob.pet.speak
bob.pet.fetch

# Because bob.pet returns a Bulldog object, we can then chain any Bulldog methods at the end as well (see above).

# Objects that are stored as state within another object are also called "collaborator objects".
