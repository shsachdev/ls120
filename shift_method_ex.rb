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
    members + other_team.members
  end
end

cowboys = Team.new("Dallas Cowboys")
emitt = Person.new("Emmitt Smith", 46)

cowboys << emmitt

cowboys.members
