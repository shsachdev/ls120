class Greeting
  def greet(str)
    puts str
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def goodbye
    greet("goodbye")
  end
end
