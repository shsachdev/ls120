class Person
  attr_accessor :name
  def initialize(n)
    self.name = n
  end
end

bob = Person.new("bob")
p bob.name
bob.name = "Robert"
p bob.name
