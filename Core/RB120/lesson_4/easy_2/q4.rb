#What could you add to this class to simplify it and remove two methods from the class definition while still maintaining the same functionality?

class BeesWax

  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

#we can add some attr getter and setter methods to replaces the method definitions for the type instance variable

class BeesWax

  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I am a #{type} of Bees Wax" #we can also replace the reference to the instance variable itself to a reference to its getter method
  end
end