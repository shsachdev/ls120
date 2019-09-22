class Dog
  attr_reader :name, :appetite, :food_bowl

  def initialize(name)
    @name = name
    @appetite = 10
    @food_bowl = {"bones" => 10}
  end

  def bark
    puts "Woof! Woof!"
  end

  def feed
    puts "Here is a bone for you"
    @appetite -= 5
    refill
  end

  private

  def refill
    arr = []
    food_bowl.each do |k, v|
      arr << k if v == 0
    end
    arr.each do |value|
      @food_bowl[value] += 10
    end
  end
end

fido = Dog.new("fido jones")

puts fido.appetite

puts fido.food_bowl

puts fido.name
