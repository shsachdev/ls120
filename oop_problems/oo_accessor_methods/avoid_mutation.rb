class Person
  def initialize(name)
    @name = name
  end

  def name
    @name.clone # returns a copy of @name instead of a reference to it.
  end
end

person1 = Person.new("James")

person1.name.reverse! # line 11 mutates the calling object, which is @name

puts person1.name


# since we are providing a customized getter method, we should also remove the attr_reader method. 
