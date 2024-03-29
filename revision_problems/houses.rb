class House
  attr_reader :price

  def initialize(price)
    @price = price
  end

  def <(other_house)
    true if price < other_house.price
  end

  def >(other_house)
    true if price > other_house.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1


# Alternatively, you could also do the following:

class House
  attr_reader :price
  include Comparable

  def initialize(price)
    @price = price
  end

  def <=>(other)
    price <=> other.price
  end
end

...
