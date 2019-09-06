class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def >(other_person)
    age > other_person.age
  end
end


class Team
  attr_accessor :name, :members

  def initialize(name)
    @name = name
    @members = []
  end

  def <<(person)
    # could even add some condition here like: return if person.not_yet_18?
    members.push person
  end
end

cowboys = Team.new("Dallas Cowboys")

emitt = Person.new("Emmitt Smith", 46)

cowboys << emitt

p cowboys.members
