class Person
  def initialize(n)
    @name = n
  end

  def get_name
    @name   # the @name instance variable is accessible here.
  end
end

bob = Person.new("bob")

bob.get_name

joe = Person.new("joe")

puts bob.inspect

puts joe.inspect
