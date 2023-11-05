# If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

# Which one of these is a class method (if any) and how do you know? How would you call a class method?

# `self.manufacturer` is a class method because of the use of `self` before the method name. This means you can call the method on the class itself, but not on instances of the class.
