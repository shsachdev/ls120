class Person
  @@total_people = 0   # initialized at the class level.

  def self.total_people # accessible from class method.
    @@total_people
  end

  def initialize # mutable from instance method.
    @@total_people += 1
  end

  def total_people
    @@total_people   # accessible from instance method
  end
end

Person.total_people # => 0
Person.new
Person.new
Person.total_people # => 2

bob = Person.new
bob.total_people # => 3

joe = Person.new

joe.total_people # => 4

Person.total_people
