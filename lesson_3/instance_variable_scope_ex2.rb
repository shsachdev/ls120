class Person
  def get_name
    @name    # the @name instance variable is not initialized anywhere.
  end
end

bob = Person.new

p bob.get_name  # => nil
