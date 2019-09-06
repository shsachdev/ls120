class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def >(other_person)
    age > other_person.age
  end
end

bob = Person.new("Bob", 49)

kim = Person.new("Kim", 33)

# What happens if we try to compare them?

puts "bob is older than kim" if bob > kim # Undefined method ">" for Object

puts "bob is older than kim" if bob.>(kim)

# Also note that defining > doesn't automatically give us <.
