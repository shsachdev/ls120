module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ""
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors



# sparky = GoodDog.new
# sparky.speak("Arf!")  # => Arf
# bob = HumanBeing.new
# bob.speak("Hello!")   # => Hello!




# Here, we have created an instance of our GoodDog class and stored it in the
# variable sparky.
