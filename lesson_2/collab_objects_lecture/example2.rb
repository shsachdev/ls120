class Person
  def initialize
    @heroes = ["Superman", "Spiderman", "Batman"]
    @cash = {"ones" => 12, "fives" => 2, "tens" => 0, "twenties" => 2, "hundreds" => 0}
  end

  def cash_on_hand
    # this method will use @cash to calculate total cash value.
  end

  def heroes
    @heroes.join(",")
  end
end

joe = Person.new

joe.cash_on_hand

joe.heroes
