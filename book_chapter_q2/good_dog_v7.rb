class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says Arf!" # in our instance methods, we have access to instance variables.
  end
end

fido = GoodDog.new("Fido")

puts fido.name
fido.name = "Franky"
puts fido.name
