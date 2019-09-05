class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def dog_name
    "bark! bark! #{@name} bark! bark!" # can @name be referenced here? yes it can. 
  end
end

teddy = Dog.new("Teddy")

puts teddy.dog_name # => bark! bark! Teddy bark! bark!
