#Which of these two classes would create objects that would have an instance variable and how do you know?

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

# the class definition for `Pizza` class has an instance variable being instantiated and assigned to the parameter `name` on line 11, whereas the `Fruit` class does not have one.
# Instance variables are written beginning with an `@`.