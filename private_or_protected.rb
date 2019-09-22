class Dog
  attr_reader :name, :appetite

  def initialize(name)
    @name = name
    @appetite = 10
  end

  def bark
    puts "Woof! Woof!"
  end

  def feed
    @appetite += 5
    
  end
end
