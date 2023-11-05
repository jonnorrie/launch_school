# If we have a class such as the one below:

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# In the name of the cats_count method we have used self. What does self refer to in this context?

# here, `self` refers to the `Cat` class itself. the use of `self` in the name of the method definition tells us it is a class m,ethod, and can only be called on the class, but not instances of the class.