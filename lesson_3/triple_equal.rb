num = 25

if (1..50) === num
  puts "small number"
elsif (51..100) === num
  puts "large number"
else
  puts "not in range"
end

# prints out: "small number"

String === "hello" # => true
String === 15      # => false


# When === compares two objects, such as (1..50) and 25, it's essentially asking "if (1..50) is a group,
# would 25 belong in that group?"
