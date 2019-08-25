class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    self # self is used because it refers to the calling object. 
  end
end

kitty = Cat.new("Sophie")
p kitty.identify
