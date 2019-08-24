class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w) #instance_method
    self.name = n # calling setter method on lines 5-7
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w) #instance_method
    self.name = n # calling setter method on lines 11-13, same as calling sparky.name=
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self #returning the calling object, in this case fido.
  end

  puts self
end

fido = GoodDog.new("Fido", "6ft", "155lbs")

p fido.what_is_self
