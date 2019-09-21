class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

fido = Dog.new("Fido")

puts fido.name


# All objects of the same class have the same behaviors, though they contain
# different states; here, the differing state is the name.
