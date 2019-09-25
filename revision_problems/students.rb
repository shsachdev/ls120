class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
  def initialize
    super
  end
end



# Graduate students have the option to use on-campus parking, while Undergraduate students do not.

# Graduate and Undergraduate students have a name and year associated with them.
