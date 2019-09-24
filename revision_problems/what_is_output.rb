class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name


# the original version of to_s uses String#upcase! which mutates its argument in place.

# This causes @name to be modified, which in turn causes name to be modifed: this is because
# @name and name reference the same object in memory.
