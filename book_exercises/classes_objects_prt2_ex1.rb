class GoodDog
  attr_accessor :name, :height, :weight # this one line gives us six getter/setter methods.

  def self.mileage_calculator(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end

  def initialize(n, h, w) # initialize method takes a parameter called name.
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says Arf!"  # here, we are calling the instance method name, rather than the instance variable name.
  end

  def change_info(n, h, v)
    self.name = n # this tells ruby that we're calling a setter method, not creating a local variable.
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  def to_s
    puts "This #{}"
  end
end

sparky = GoodDog.new("Sparky", "5ft", "777")

puts sparky.speak
puts sparky.name
sparky.name = "Spartacus" # this is syntaxtical sugar for the method name=(n) where n is a string.
puts sparky.name
sparky.height = "5ft"
puts sparky.height
puts sparky.info

GoodDog.mileage_calculator(18, 92)
