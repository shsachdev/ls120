class Team
  attr_accessor :name, :members

  def initialize(name)
    @name = name
    @members = []
  end

  def <<(person)
    members.push person
  end

  def +(other_team)
    temp_team = Team.new("Temporary Team")
    temp_team.members = members + other_team.members
    temp_team # now + will return a team object.
  end
end

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

cowboys = Team.new("Dallas Cowboys")

cowboys << Person.new("Troy Aikman", 48)

cowboys << Person.new("Emmiitt Smith", 46)

cowboys << Person.new("Michael Irvin", 49)

niners = Team.new("San Francisco 49ers")

niners << Person.new("Joe Montana", 59)

niners << Person.new("Jerry Rice", 52)

niners << Person.new("Deion Sanders", 47)

dream_team = cowboys + niners # what is dream_team?


# dream_team is an array of person objects => note, now I refactored it so that it returns a team object.

# Note: normally, the Integer#+ method returns a new Integer object.

# In a similar vein, the String#+ method returns a new String object;

# the Date#+ method returns a new Data object.
