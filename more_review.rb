# def [](idx)
#   members[idx]
# end

# def []=(idx, obj)
#   members[idx] = obj
# end

# We refer to the initialize method as a constructor, because it gets triggered whenever we create a new object.

# Modules are used only for namespacing and grouping common methods together.
# Namespacing means organizing similar classes under a module.

# Private methods are not accessible outside of the class definition at all, and are only
# accessible from inside the class when called without self.

# Polymorphism is the ability to to represent data in different forms. Method overriding is one way in which Ruby
# implements polymorphism.

# The method lookup path is the order in which Ruby will traverse the class hierarchy
# to look for methods to invoke. To see the method lookup path, we can use the .ancestors class method.

# Objects that are stored as state within another object are also called "collaborator objects".

# # the == operator is actually a method. Most built-in Ruby classes, like Array, String, Fixnum, etc
# override the == method to specify how to compare objects of those classes.

# Protected methods are very similar to private methods. The main difference between them is protected
# methods allow access between class instances, while private methods don't.

# When a method is private, only the class - not instances of the class - can access it.
# However, when a method is protected, only instances of the class or a subclass can call the method.
