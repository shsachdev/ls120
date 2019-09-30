class Animal
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

module Swimmable
  def can_swim?
    true
  end
end

class Dog < Animal
  include Swimmable
end

puts Dog.ancestors
