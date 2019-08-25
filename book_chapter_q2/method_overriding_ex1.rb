class Parent
  def say_hi
    p "Hi from Parent."
  end
end

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send
    p "Send from Child..."
  end
end

lad = Child.new

lad.send(:say_hi) #error message

# child = Child.new
#
# son = Child.new
#
# son.send(:say_hi) # => "Hi from Child."
#
# child.say_hi # => "Hi from Child."
#
# p Parent.superclass # => Object
