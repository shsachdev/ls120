class Person
  attr_writer :name

  def name
    @name.capitalize
  end
end

person1 = Person.new

person1.name = "eLiZaBeTh"

puts person1.name

person1.name = "AlFeeeZ"

puts person1.name


# they implemented this the opposite way of me, but our solutions both work. 
