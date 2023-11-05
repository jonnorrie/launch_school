#If we have a class such as the one below:
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

#Explain what the @@cats_count variable does and how it works. What code would you need to write to test your theory?

# the `cats_count` variable is a class variable, meaning it belongs to the entire class, not its instances.
# this variable is counting the number of instances of this class have been created.
# Each time a new object is created, the integer represented by `cats_count` is increased by 1.

cat_1 = Cat.new('tabby')
Cat.cats_count # => 1
cat_2 = Cat.new("maine coon")
Cat.cats_count # => 2