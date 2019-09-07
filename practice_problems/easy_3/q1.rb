class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# What happens in each of the following cases?

# Case 1

hello = Hello.new
hello.hi  # => "Hello"

# Case 2

hello = Hello.new
hello.bye # => error message

# Case 3

hello = Hello.new
hello.greet # => error message

# Case 4

hello = Hello.new
hello.greet("Goodbye") # => "Goodbye"

# Case 5

Hello.hi # => error: no class method named "Hi"
