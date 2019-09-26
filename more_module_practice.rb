# Why do we need modules? Give us some code examples.

# Modules enable us to mix in behaviors into classes.

module Swim
  def swim
    "swimming!"
  end
end

class Dog
  include Swim
  # ... rest of class omitted
end

class Fish
  include Swim
  # ... rest of class omitted
end

# The result is that all the instance methods defined in the Swim module are now
# ready for use in the Dog and Fish classes. It's as if we copied and pasted the
# methods right in. We can also mix in as many modules as we need to.

# It is important to note that mixing in modules does affect the method lookup path.

# Modules are another way to achieve polymorphism in Ruby. A module is a collection
# of behaviors that is usable in other classes via mixins.

# A module is "mixed in" to a class using the include method invocation.
