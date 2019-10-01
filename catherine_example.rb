class Animal
  def fido
    self
  end
end

class Dog < Animal
  attr_accessor :age, :name

  def initialize(n, a)
    @name = n
    @age = a
  end

  def info
    puts "My name is #{name} and my age is #{fido.age}"
  end
end

fido = Dog.new("fido", 12)

fido.info  # => My name is fido and my age is 12.
