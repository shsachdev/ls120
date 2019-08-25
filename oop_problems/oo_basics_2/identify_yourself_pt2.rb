class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s # we can override to_s for any class to produce any useful output we need.
    "I'm #{name}"
  end
end

kitty = Cat.new("Sophie")

puts kitty # puts always invokes the to_s method when converting some value to an approximate string representation, so if we can override it, we can get our desired result.
