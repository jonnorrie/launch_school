# If we have the class below, what would you need to call to create a new instance of this class.

class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

# you would need to instantiate a new instanfce of the `Bag` class, but since the initialize method takes 2 parameters,
# we are required to provide 2 arguments when creationg a new instance.

bag = Bag.new('red', 'burlap')