class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says Arf!" # in our instance methods, we have access to instance variables.
  end

  def name
    @name
  end

  def name=(n)
    @name = n
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak

puts fido.get_name
fido.set_name = "Franky"
puts fido.get_name
