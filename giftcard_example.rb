class GiftCard
  attr_reader :balance
  attr_writer :balance

  def initialize(initial_balance)
    @balance = initial_balance
  end

  def swipe(amount)
    @balance -= amount
  end

  def to_s
    puts "The balance of this card is #{balance} dollars"
  end


  private
  attr_writer :balance
end

macys_card = GiftCard.new(100)

puts macys_card