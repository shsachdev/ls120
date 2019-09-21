class GiftCard
  attr_reader :balance
  # attr_writer :balance

  def initialize(initial_balance)
    @balance = initial_balance
  end

  def swipe(amount)
    @balance -= amount
  end

  def to_s
    "The balance of this card is #{balance} dollars"
  end


  # private
  # attr_writer :balance
end

macys_card = GiftCard.new(100)

macys_card.swipe(20)

puts macys_card.balance
