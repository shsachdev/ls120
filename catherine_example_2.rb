class Dog
  attr_accessor :nickname

  def initialize(n)
    nickname = n
  end
end

miguel = Dog.new("migos")

puts miguel.nickname
