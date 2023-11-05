# If we have a class such as the one below:

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

# You can see in the make_one_year_older method we have used self. What does self refer to here?

# In this example, `self` refers to the current instance of the `Cat` class because the `make_one_year_older` method is an instance method, nmot a class method.
# When the method is called, and we reference `self.age`, we are calling the getter method for the `age` instance variable for our current object