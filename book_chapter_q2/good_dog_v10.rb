class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w) #instance_method
    self.name = n # calling setter method on lines 5-7
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w) #instance_method
    self.name = n # calling setter method on lines 11-13
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end
end

fido = GoodDog.new("Fido", "6ft", "155lbs")

p fido.what_is_self
