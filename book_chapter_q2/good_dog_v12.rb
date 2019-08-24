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

class BadDog < Animal
  def initialize(age, name)
    super(name) #the name argument is passed to the superclass and set to the @name instance variable.
    @age = age
  end
end

bear = BadDog.new(2, "bear")
