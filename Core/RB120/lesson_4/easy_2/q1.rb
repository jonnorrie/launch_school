# You are given the following code:

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

# What is the result of executing the following code:

oracle = Oracle.new # this line instantiates a new object of the `Oracle` class
oracle.predict_the_future # this line will randomly choose one of the three strings in the array, and interpolate it into the string given on line 5

