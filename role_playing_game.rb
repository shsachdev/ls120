class Player
  attr_reader :health_value, :strength_value, :intelligence_value

  def initialize
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

  protected

  attr_writer :strength_value, :intelligence_value

  private

  def roll_dice(num1, num2)
    rand(num1..num2)
  end
end
