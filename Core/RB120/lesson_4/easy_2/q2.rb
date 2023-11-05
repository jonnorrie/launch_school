# We have an Oracle class and a RoadTrip class that inherits from the Oracle class.
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future

# this time, the `choice` method called on line 4 will reference the method 
# definition on line 13 instead, as `predict_the_future` is being called on a 
# `RoadTrip` object, which has its own method definition for `choice`