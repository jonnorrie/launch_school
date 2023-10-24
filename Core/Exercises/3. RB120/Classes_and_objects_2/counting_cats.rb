class Cat

  @@total = 0

  def initialize
    @@total += 1
  end

  def self.total
    p @@total
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total