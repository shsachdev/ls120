class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def change_info(n, h, w)
    self.name = n # this is a method call
    self.height = h
    self.weight = w
  end

  def speak
    "#{name} says Arf!" # in our instance methods, we have access to instance variables.
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end
end

p GoodDog.what_am_i

fido = GoodDog.new("Fido")
puts fido.speak
puts fido.name
fido.name = "Franky"
puts fido.name

fido.change_info("John", "6ft", "155lbs")

puts fido.name
puts fido.height
puts fido.weight
