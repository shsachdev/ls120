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
    @food_bowl["bones"] -= 3
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

puts "Originally, Fido's appetite was a #{fido.appetite} out of 10."

fido.feed

puts "However, after eating food, his appetite is a #{fido.appetite} out of 10."

puts fido.food_bowl

puts fido.refill # private method "refill" called for  #<Dog:0x007fa5de862d70>
