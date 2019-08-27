class Person
  attr_accessor :name
  attr_writer :phone_number # we only want to be able to change phone_number, and not retrieve it. so, attr_writer is best option.
end

person1 = Person.new

person1.name = "Jessica"

person1.phone_number = "0123456789"

puts person1.name
