str1 = "something"

str2 = "something"

str1_copy = str1

# comparing the string objects' values

str1 == str2 # => true

str1 == str1_copy

str2 == str1_copy

# comparing the actual objects

str1.equal? str2 # => false

str1.equal? str1_copy # => true, because they point to the same object; they reference the same object in memory.

str2.equal? str1_copy # => false

# == is an instance method available on all objects.
