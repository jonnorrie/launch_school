# If we have this class:

class Game
  def play
    "Start the game!"
  end
end

# nd another class:

class Bingo 
  def rules_of_play
    #rules of play
  end
end

# What can we add to the Bingo class to allow it to inherit the play method from the Game class?

# We can do the following:

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

# The use of `<` with another class name makes the current method being defined to inherit all methods from the existing class, making it the parent class of the current class being defined.