class Person
  attr_accessor :name, :first_name,

  def initialize(n)
    @name = n
  end

  def first_name
    @name
  end
end



bob = Person.new('Robert')
bob.name                  # => 'Robert'
bob.first_name            # => 'Robert'
bob.last_name             # => ''
bob.last_name = 'Smith'
bob.name                  # => 'Robert Smith'
