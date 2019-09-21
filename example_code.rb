class Dog
  def initialize(name)
    @name = name
  end

  def say_hello
    puts "Woof! My name is #{@name}"
  end
end

# How would you describe the above code?

# This code defines a Dog class with two methods:

# The #initialize method that initializes a new Dog object, which it does by assigning the instance variable
# @name to the dog's name specified by the argument.

# The #say_hello instance method which prints a message that includes the dog's name in place of #{@name}.
# #say_hello returns nil.
