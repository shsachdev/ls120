class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

fido = Dog.new("Fido")

puts fido.name
