class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

joe = Person.new("Joe")
joe.name # => "Joe"

# Notice that @name holds a string object. That is, "Joe" is an object of the String class.

# Instance variables can hold any object, not only strings and integers. It can hold data structures, like arrays or hashes.

# Here is an example:

class Person
  def initialize
    @heroes = ["Superman", "Spiderman", "Batman"]
    @cash = {"ones" => 12, "fives" => 2, "tens" => 0, "twenties" => 2, "hundreds" => 0}
  end

  def cash_on_hand
    # this method will use @cash to calculate total cash value
    # we'll skip the implementation
  end

  def heroes
    @heroes.join(", ")
  end
end

joe = Person.new

joe.cash_on_hand

joe.heroes
