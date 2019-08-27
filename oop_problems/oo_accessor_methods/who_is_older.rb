class Person
  attr_writer :age

  def older_than?(other)
    age > other.age
  end
end

person1 = Person.new
person1.age = 17
