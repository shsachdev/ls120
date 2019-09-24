module Armor
  def attach_armor
  end

  def remove_armor
  end
end

module Spell
  def cast_spell(spell)
  end
end



class Player
  attr_reader :health_value, :strength_value, :intelligence_value
  attr_accessor :name

  def initialize(n)
    @name = n
    @health_value = 100
    @strength_value = roll_dice(2,12)
    @intelligence_value = roll_dice(2,12)
  end

  def heal(num)
    @health_value += num
  end

  def hurt(num)
    @health_value -= num
  end

  def to_s
    puts "Name: #{name}"
    puts "Class: #{self.class}"
    puts "Health: #{health_value}"
    puts "Strength: #{strength_value}"
    puts "Intelligence: #{intelligence_value}"
  end


  private

  def roll_dice(num1, num2)
    rand(num1..num2)
  end
end

class Warrior < Player
  include Armor
  def initialize(n)
    super(n)
    @strength_value = roll_dice(4,14)
  end
end

class Paladin < Player
  include Armor
  include Spell
end

class Magician < Player
  include Spell
  def initialize(n)
    super(n)
    @intelligence_value = roll_dice(4,14)
  end
end

class Bard < Magician

  def create_potion

  end
end



joe = Warrior.new("Joe")

puts joe.health_value
joe.hurt(50)
puts joe.health_value
