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

  def has_more_food_than?(other_dog)
    amount_of_food == other_dog.amount_of_food
  end

  protected

  def refill
    arr = []
    food_bowl.each do |k, v|
      arr << k if v == 0
    end
    arr.each do |value|
      @food_bowl[value] += 10
    end
  end

  def amount_of_food
    @food_bowl.values.sum
  end
end

fido = Dog.new("fido jones")

larry = Dog.new("larry")

puts fido.has_more_food_than?(larry)
