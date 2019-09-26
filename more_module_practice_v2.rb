module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new

sparky.speak("Arf!")

bob = HumanBeing.new

bob.speak("Hello!")


# Both objects, sparky and bob, have access to the speak instance method.
# This is possible through "mixing in" the module Speak.
