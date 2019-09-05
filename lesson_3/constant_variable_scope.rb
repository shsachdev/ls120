class Person
  TITLES = ["Mr", "Mrs", "Ms", "Dr"]

  attr_reader :name

  def self.titles
    TITLES.join(", ")
  end

  def initialize(n)
    @name = "#{TITLES.sample} #{n}"
  end
end

bob = Person.new("bob")

bob.name   # => "Ms bob" (output may vary)
