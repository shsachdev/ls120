class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end
end

bruno = GoodDog.new("brown")

puts bruno.color # => no getter method created for this yet, so we get an error.

puts bruno.name # => this returns the string brown.
