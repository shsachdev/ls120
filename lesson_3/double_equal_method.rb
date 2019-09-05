class Person
  attr_accessor :name

  def ==(other)
    name == other.name # relying on String#== here
  end
end

bob = Person.new
bob.name = "Bob"

bob2 = Person.new
bob2.name = "Bob"

bob == bob2 # => true
