class Animal
  def fido
    self.age
  end
end

class Dog < Animal
  attr_writer :age

  def initialize(n, a)
    @name = n
    @age = a
  end

  def age
    fido
  end
end

fido = Dog.new("fido", 12)

puts fido.age  # what do we get outputted on line 19?
