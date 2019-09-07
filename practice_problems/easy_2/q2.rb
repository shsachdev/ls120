class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle # RoadTrip inherits from Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future

# The answer is that since we're calling predict_the_future on an instance of RoadTrip,
# every time Ruby tries to resolve a method name, it will start with the methods defined on
# the class you are calling. 
