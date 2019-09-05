class Dog
  LEGS = 4
end

class Cat
  def legs
    Dog::LEGS   # added the :: namespace resolution  operator.
  end
end

kitty = Cat.new

kitty.legs  # => 4
